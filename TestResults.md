# Test results: Second Modifiers Lab (X1 to X4)

Data revision tested: 2

Date: 30SEP2026

New Recruit version:New Recruit 36.28

For each case, write PASS or FAIL on the Result line, then say in plain words what the app actually showed (error text, an option that appeared or did not, a cost that looked wrong).

## X1: Showing an option only to certain unit types (the instanceOf and notInstanceOf conditions)

What should happen: Two test options exist, named "X1a Only for Warriors" and "X1b Not for Warriors". On the Leader you should see only "X1b Not for Warriors". On the Warriors unit you should see only "X1a Only for Warriors". If you see both, neither, or the reverse, write down which.

Result: FAIL The leader header is there but no leader unit is added. If I add a leader the X1b Not for Warriors is present on the leader. When I add a Warriors the X1a Only for Warriors is on the warriors


## X2: Rounding a repeat up (the round_up setting)

What should happen: With no Warriors, a Scout should show an error. With 1 Warriors, one Scout is allowed (the count rounds 1 half up to 1). With 2 Warriors, still one Scout. With 3 Warriors, two Scouts are allowed and a third shows an error.

Result: PASS

## X3: A limit expressed as a percentage of the roster's cost (the percent setting)

What should happen: Allies may cost at most 50 percent of the whole roster. One Ally on its own with the Leader is 2 of 3, so the roster should show an error about Allies. Adding the Warriors makes it 2 of 5 and the error should clear. A second Ally makes it 4 of 7 and the error should return. A second Warriors makes it 4 of 9 and the error should clear again.

Result: PASS

## X4: A change attached to one link rather than to the entry (a modifier on a link)

What should happen: The option "X4 Link probe" should always be visible on the Warriors unit. On the Leader it should be hidden while there are no Allies, appear when an Ally is added, and disappear again when the Ally is removed.

Result: PASS

In all cases the Header for leader was visible but no Leader unit was added I had to manually add them each time.
