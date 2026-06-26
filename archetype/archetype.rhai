display(as_json(ANSWERS));

// Always render the versioned (archetect@X.Y.Z) and major-line (archetect@N)
// formulas for this release.
render(Directory("contents"), ANSWERS, #{
  if_exists: Overwrite,
});

// Only (re)render the main `archetect` formula when this release is the latest of
// the current top major line. Maintenance releases on older majors (e.g. v2 after
// v3 is out) send update_main=false so `brew install archetect` is never demoted.
// Accept both a JSON boolean and the string "true" for robustness.
let update_main = if "update_main" in ANSWERS { ANSWERS.update_main } else { false };
if update_main == true || update_main == "true" {
  render(Directory("main"), ANSWERS, #{
    if_exists: Overwrite,
  });
}
