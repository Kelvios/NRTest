# NRTest

Test bench for New Recruit game systems, rules and limit labs built by [Boot-Camp](https://github.com/Kelvios/Boot-Camp) (private).

Always the same four files, replaced for each new test:

- `Test.gst`: the game system (name: Test)
- `Test.cat`: the catalogue
- `TestPlan.md`: the test cases
- `TestResults.md`: the same cases with a `Result:` line to fill in

Bump `revision` in the source spec on every new test so New Recruit reloads the data. Keep finished results by copying `TestResults.md` to `archive/<date>-<name>-results.md` before starting the next test, and record proven patterns in Boot-Camp's `docs/MODELLING_PATTERNS.md`.

Most labs use just `Test.gst` and `Test.cat`. A lab that needs several catalogues adds `Test-<Name>.cat` files. Delete any extra `.cat` files when replacing them with the next test.

## Updating in New Recruit without deleting

Add this repo once with **Add or remove games, Add from GitHub**. After that, pressing update should bring in new files, because every publish raises one shared `revision` (stored in `REVISION.txt`) in the game system and every catalogue, and New Recruit only offers an update when the revision is higher than the one installed. The files are built with `tools/nrtest_publish.py` in Boot-Camp, which does this automatically. File names stay fixed (`Test.gst`, `Test.cat`, `Test-<Name>.cat`) and ids never change, so New Recruit treats each publish as the same game system, updated. If an update does not appear, tell me what the app shows (whether the version number moves, or nothing happens) so we can find out whether it needs a different step.
