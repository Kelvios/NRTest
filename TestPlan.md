# Test plan: Second Modifiers Lab (X1 to X4)

Data revision under test: 2 (`Test.gst`, `Test.cat`). Source spec: `Kelvios/Boot-Camp`, `templates/experiments/modifiers2.spec.yaml`.

These four cases check rule shapes that the first Modifiers Lab did not cover. None has been run in the app before.

Two things could not be tested with the current builder and are left out: changing an entry's description text, and counting selections in child forces.

## Before you start

1. Load the new `Test.gst` and `Test.cat` in New Recruit. The game system is called Test. Because the files have the same name as last time, remove the old copy first if the app keeps showing the old options.
2. Create a roster and set its cost limit high (50 Honour) so the cost limit does not hide the rule being tested.
3. Write your results in `TestResults.md`, and note the New Recruit version at the top.

## X1: Showing an option only to certain unit types (the instanceOf and notInstanceOf conditions)

What to do: Start a new roster. The Leader is already in it. Add one Warriors unit. Open the options on the Leader, then open the options on the Warriors unit.

What should happen: Two test options exist, named "X1a Only for Warriors" and "X1b Not for Warriors". On the Leader you should see only "X1b Not for Warriors". On the Warriors unit you should see only "X1a Only for Warriors". If you see both, neither, or the reverse, write down which.

## X2: Rounding a repeat up (the round_up setting)

What to do: Start a new roster with just the Leader. Add Warriors units one at a time, and after each one try to add a Scout, then remove the Scout again. Try to add a second Scout as well each time.

What should happen: With no Warriors, a Scout should show an error. With 1 Warriors, one Scout is allowed (the count rounds 1 half up to 1). With 2 Warriors, still one Scout. With 3 Warriors, two Scouts are allowed and a third shows an error.

## X3: A limit expressed as a percentage of the roster's cost (the percent setting)

What to do: Start a new roster with just the Leader (cost 1). Add one Ally (cost 2). Then add a Warriors unit (cost 2). Then add a second Ally. Then add a second Warriors unit.

What should happen: Allies may cost at most 50 percent of the whole roster. One Ally on its own with the Leader is 2 of 3, so the roster should show an error about Allies. Adding the Warriors makes it 2 of 5 and the error should clear. A second Ally makes it 4 of 7 and the error should return. A second Warriors makes it 4 of 9 and the error should clear again.

## X4: A change attached to one link rather than to the entry (a modifier on a link)

What to do: Start a new roster with just the Leader and one Warriors unit. Look for the option "X4 Link probe" on the Leader and on the Warriors unit. Then add an Ally and look again. Then remove the Ally and look again.

What should happen: The option "X4 Link probe" should always be visible on the Warriors unit. On the Leader it should be hidden while there are no Allies, appear when an Ally is added, and disappear again when the Ally is removed.
