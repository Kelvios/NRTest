# Test plan: Infamy Infamy, Britons (B1 to B8)

Data revision under test: 1. Source spec: `Kelvios/Boot-Camp`, `systems/Infamy/spec.yaml`.

This adds the Britons army. The Roman armies were tested earlier and passed, so B8 only checks they have not changed. The one new idea is B5: Chariots are limited by how many Warriors Groups are in the roster, a rule shape that has not been tried in the app with named units before.

The files are `Test.gst`, `Test.cat` (Late Republican Romans), `Test-EI.cat` (Early Imperial Romans) and `Test-Britons.cat`.

## Before you start

1. Remove the old "Infamy Infamy" game system and its catalogues from New Recruit, then load `Test.gst` and the three `.cat` files. Load the game system first.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Do B1 and B2 in one roster, in order.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top.

## B1: Britons are offered, and one Warlord is required

What to do: Load the game system with all three catalogues. Start a new roster and check that "Britons" is among the armies. Pick Britons, add an Army force and look at what is reported missing. Add one "Leader (Status III, Warlord)", then try to add a second.

What should happen: Britons should be offered alongside the two Roman armies. The empty Army should report that it needs one Warlord. With one Leader (Status III, Warlord) it should clear. A second should show an error.

## B2: Group prices add up in Points

What to do: In the same roster add two "Noble Warriors" (19 each), two "Warriors" (14 each) and one "Tribal Levy" (7).

What should happen: Points should total 83 (10 + 19 + 19 + 14 + 14 + 7). Support should show 0 or nothing.

## B3: Stat lines

What to do: Open the stat lines of these Groups. "Noble Warriors": Elite Warriors, strength 10, Medium armour, Mixed weapons, Aggressive Attack 1, Step Out 1, characteristics Mob, Chariots, Fervour, Darken the Sky (when in chariots), 19 points. "Tribal Levy": Inferior Warriors, strength 10, Light, Mixed, Aggressive Attack 3, Step Out 3, Mob, Limited Fervour, Supra Numerum, 7 points. "Fanatical Warriors": Warriors, strength 6, Light, Hand to Hand Only, Aggressive Attack 1, Step Out 1, Fanatics, Fervour, Supra Numerum, 14 points. "Tribal Javelins": Skirmishers, strength 6, Light, Javelin, Aggressive Attack dash, Step Out 2, Darken the Sky, Supra Numerum, 6 points.

What should happen: Each stat line and point cost should match. Write down any value that is wrong or missing.

## B4: Which units are offered under each heading

What to do: Look at the units you can add under each heading in a Britons Army.

What should happen: Foot Groups (5): Noble Warriors, Warriors, Fanatical Warriors, Tribal Levy, Allied Warriors. Skirmisher Groups (2): Tribal Javelins, Tribal Slingers. Mounted Groups (1): Tribal Cavalry. War Engines: nothing. There should be no Roman units.

## B5: Chariots are capped by the number of Warriors Groups

What to do: Start a new Britons roster with just the Leader. Try to add one "Chariots". Then add one "Noble Warriors" and add Chariots until you get an error. Then add one "Warriors" and try again. Then remove the Noble Warriors and look again. Do not count Tribal Levy or Allied Warriors.

What should happen: With no Warriors or Noble Warriors, one Chariots should show an error. With one Noble Warriors, one Chariots is fine and a second errors. With one Noble Warriors and one Warriors, two Chariots are fine and a third errors. After removing the Noble Warriors, only one is allowed, so two Chariots should error. Each Chariots costs 3 Support.

## B6: Support costs and limits

What to do: In one Britons roster add: three Wagons (2 each), two Musicians (2), two Secret Ways (4), two Dykes (12), two Fortified Walls (20) and three Faggots (2). Note which give an error and read the Support total.

What should happen: The third Wagon (limit 2), second Musician (limit 1), second Secret Way (limit 1), second Dyke (limit 1) and second Fortified Wall (limit 1) should each show an error. Three Faggots should show no error. Support should total 6 + 4 + 8 + 24 + 40 + 6 = 88, counting every item you added.

## B7: Which support options are offered

What to do: Look at the units and options under the Support heading of a Britons Army.

What should happen: You should see: Supra Numerum Leader (Support), Wagon, Musician, Faggots, Status I Leader (Support), Chariots, Battering Ram, Secret Way, Status II Leader (Support), Dyke, Fortified Wall. You should not see Palisade, Exploratores, Capsarius, Mule Train or Prepared Defences.

## B8: The Roman armies still work

What to do: Start a roster with Late Republican Romans: add an Army, one Centurion, two Roman Legionaries and one Legionary Recruits.

What should happen: Points should total 67 (10 + 22 + 22 + 13), as in the earlier test.
