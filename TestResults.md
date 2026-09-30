# Test results: Modifiers Lab (M1 to M10)

Data revision tested: 1
Date: 30SEP2026
New Recruit version: New Recruit 36.28

Fill in each Result line: PASS or FAIL, then exactly what the app did (error text, greyed option, wrong cost, option that should or shouldn't have appeared).

## M1: Hidden by a condition (`set hidden`, `lessThan`)

Expect: "M1 Hidden until a Hero" is absent. Add a Hero: it appears. Remove the Hero: it disappears again.

Result: As expected.

## M2: `decrement` on a cost

Expect: Marksmen costs 3 alone, 2 with 2 Warriors, back to 3 with 1 Warriors.

Result: As expected.

## M3: `set` on a constraint value (Marksmen cap)

Expect: 2 Marksmen: error (cap 1). With a Hero the cap becomes 3: the error clears and a third is fine. A fourth errors.

Result: As expected.

## M4: `decrement` on a constraint value (Warriors cap). Run without a Hero

Expect: 4 Warriors fine; a fifth errors. With a Marksmen the cap drops to 3, so 4 Warriors error.

Result: As expected.

## M5: Condition groups (`and`, `or`)

Expect: "M5a" and "M5b" are visible or hidden together. Expect hidden, visible, visible, visible in that order for both.

Result: This is fine, the test is written a way that I did not understand for a long time, you should use full sentences and english to explain the test.

## M6: Condition types on the number of Heroes

Expect: 0 Heroes: lessThan 1, notEqualTo 1, atMost 1. 1 Hero: equalTo 1, atMost 1. 2 Heroes: greaterThan 1, notEqualTo 1, atLeast 2. No other probes visible.

Result: These all work as expected.

## M7: `increment` on a cost, repeated `of: unit`

Expect: Hero costs 2 alone, 3 with 1 Warriors, 4 with a Warriors and an Elite.

Result: As expected.

## M8a: Repeat `value: 2` in a force-category limit (Elites)

Expect: 1 Warriors: an Elite errors. 2: one Elite fine. 3: still one. 4: two.

Result: Elite errors unless there are two Warriors for each Elite.

## M8b: Repeat `repeats: 2` in a force-category limit (Guards)

Expect: 1 Warriors: two Guards fine, a third errors. 2 Warriors: four Guards fine.

Result: I can add 2 guards for each infantry I add

## M9: Constraint on a cost field

Expect: One Trinket fine. Both (4 Honour) error. If not, note what the constraint appears to count.

Result: A expected.

## M10: `set` and `append` on a name

Expect: With a Warriors: "Marksmen (Supported)" and "Hero (Veteran)". Without: names revert.

Result: As expected.
