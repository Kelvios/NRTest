# NRTest

Test bench for New Recruit game systems, rules and limit labs built by [Boot-Camp](https://github.com/Kelvios/Boot-Camp) (private).

Always the same four files, replaced for each new test:

- `Test.gst`: the game system (name: Test)
- `Test.cat`: the catalogue
- `TestPlan.md`: the test cases
- `TestResults.md`: the same cases with a `Result:` line to fill in

Bump `revision` in the source spec on every new test so New Recruit reloads the data. Keep finished results by copying `TestResults.md` to `archive/<date>-<name>-results.md` before starting the next test, and record proven patterns in Boot-Camp's `docs/MODELLING_PATTERNS.md`.
