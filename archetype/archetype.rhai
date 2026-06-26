display(as_json(ANSWERS));

// Always render the exact pinned formula (archetect@X.Y.Z) for this release —
// including prereleases, so `brew install archetect@3.0.0-rc.1` is possible.
render(Directory("contents"), ANSWERS, #{
  if_exists: Overwrite,
});

// Booleans arrive from the dispatch payload as JSON booleans or as the strings
// "true"/"false"; accept both.
let prerelease = if "prerelease" in ANSWERS { ANSWERS.prerelease } else { false };
let is_prerelease = prerelease == true || prerelease == "true";

let update_main = if "update_main" in ANSWERS { ANSWERS.update_main } else { false };
let do_update_main = update_main == true || update_main == "true";

// The major-line alias (archetect@N) tracks the latest *stable* patch of its major.
// Skip it for prereleases so `brew install archetect@3` never resolves to an rc.
if !is_prerelease {
  render(Directory("major"), ANSWERS, #{
    if_exists: Overwrite,
  });
}

// The main `archetect` formula updates only for the latest stable of the top major
// line (update_main=true). Maintenance releases on older majors and all prereleases
// leave `brew install archetect` untouched.
if do_update_main {
  render(Directory("main"), ANSWERS, #{
    if_exists: Overwrite,
  });
}
