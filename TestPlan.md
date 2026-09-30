# Test plan: Modifiers Lab (M1 to M10)

Data revision under test: 1 (`Test.gst`, `Test.cat`). Source spec: `Kelvios/Boot-Camp`, `templates/experiments/modifiers.spec.yaml`.

Nothing here has been run in the app before. These are modifier, condition and repeat shapes that only pass the static validator.

## Setup

1. Load `Test.gst` and `Test.cat` in New Recruit (game system first). Game system name: Test.
2. Create a roster and set its cost limit high (50 Honour) so cost caps don't hide the rule under test.
3. All experiment options sit on the Leader. Start each test from a roster with just the Leader unless the test says otherwise.
4. Record your results in `TestResults.md`, and the New Recruit version at the top.

## M1: Hidden by a condition (`set hidden`, `lessThan`)

Build: Start with the Leader only. Open the Leader's group "M1".

Expect: "M1 Hidden until a Hero" is absent. Add a Hero: it appears. Remove the Hero: it disappears again.

## M2: `decrement` on a cost

Build: Add 1 Marksmen, then 2 Warriors, then remove one Warriors.

Expect: Marksmen costs 3 alone, 2 with 2 Warriors, back to 3 with 1 Warriors.

## M3: `set` on a constraint value (Marksmen cap)

Build: Add 2 Marksmen. Then add a Hero. Then add a third and a fourth Marksmen.

Expect: 2 Marksmen: error (cap 1). With a Hero the cap becomes 3: the error clears and a third is fine. A fourth errors.

## M4: `decrement` on a constraint value (Warriors cap). Run without a Hero

Build: Add 4 Warriors, then a fifth, then add 1 Marksmen.

Expect: 4 Warriors fine; a fifth errors. With a Marksmen the cap drops to 3, so 4 Warriors error.

## M5: Condition groups (`and`, `or`)

Build: Open Leader group "M5" in four rosters: Leader only; plus a Hero only; plus a Marksmen only; plus both.

Expect: "M5a" and "M5b" are visible or hidden together. Expect hidden, visible, visible, visible in that order for both.

## M6: Condition types on the number of Heroes

Build: Open Leader group "M6" with 0, 1 and 2 Heroes.

Expect: 0 Heroes: lessThan 1, notEqualTo 1, atMost 1. 1 Hero: equalTo 1, atMost 1. 2 Heroes: greaterThan 1, notEqualTo 1, atLeast 2. No other probes visible.

## M7: `increment` on a cost, repeated `of: unit`

Build: Add a Hero alone, then add 1 Warriors, then add 1 Elite (ignore its error).

Expect: Hero costs 2 alone, 3 with 1 Warriors, 4 with a Warriors and an Elite.

## M8a: Repeat `value: 2` in a force-category limit (Elites)

Build: Add 1, 2, 3 then 4 Warriors, trying an Elite (then a second) at each step.

Expect: 1 Warriors: an Elite errors. 2: one Elite fine. 3: still one. 4: two.

## M8b: Repeat `repeats: 2` in a force-category limit (Guards)

Build: Add 1 Warriors and try Guards, then add a second Warriors.

Expect: 1 Warriors: two Guards fine, a third errors. 2 Warriors: four Guards fine.

## M9: Constraint on a cost field

Build: Open Leader group "M9". Take Trinket A, then Trinket B (2 Honour each, max 3 in the group).

Expect: One Trinket fine. Both (4 Honour) error. If not, note what the constraint appears to count.

## M10: `set` and `append` on a name

Build: Add 1 Warriors, a Marksmen and a Hero. Then remove the Warriors.

Expect: With a Warriors: "Marksmen (Supported)" and "Hero (Veteran)". Without: names revert.
