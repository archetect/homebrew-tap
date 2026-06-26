local context = Context.new()

-- ATL evaluates `{{ }}` as Lua and has no case filters, so derive the formula
-- class names here (the templates only interpolate plain variables).
local function to_pascal(s)
  local out = ""
  for word in tostring(s):gmatch("[%a%d]+") do
    out = out .. word:sub(1, 1):upper() .. word:sub(2)
  end
  return out
end

context:set("class_name", to_pascal(context:get("binary")))                 -- e.g. Archetect
-- Replace every non-alphanumeric (dots and prerelease hyphens) so the class name
-- is a valid Ruby identifier: "3.0.1-rc.1" -> "3_0_1_rc_1".
context:set("class_version", (tostring(context:get("version")):gsub("[^%w]", "_"))) -- e.g. 3_0_0

-- Render the exact pinned formula (archetect@X.Y.Z) for every release, including
-- prereleases, so `brew install archetect@3.0.0-rc.1` is possible.
directory.render("contents", context, { if_exists = Existing.Overwrite })

-- Dispatch-payload booleans arrive as JSON booleans or as the strings
-- "true"/"false"; accept both. A missing key is treated as false.
local function is_true(value)
  return value == true or value == "true"
end

-- The major-line alias (archetect@N) tracks the latest *stable* patch of its
-- major. Skip it for prereleases so `brew install archetect@N` never resolves to
-- a release candidate.
if not is_true(context:get("prerelease")) then
  directory.render("major", context, { if_exists = Existing.Overwrite })
end

-- The main `archetect` formula updates only for the latest stable of the top
-- major line (update_main=true). Maintenance releases on older majors and all
-- prereleases leave `brew install archetect` untouched.
if is_true(context:get("update_main")) then
  directory.render("main", context, { if_exists = Existing.Overwrite })
end
