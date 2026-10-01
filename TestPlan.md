# Test plan: Infamy Infamy, Gauls and Germans (GA1 to GA5, GE1 to GE5, R1)

Data revision under test: 1. Source spec: `Kelvios/Boot-Camp`, `systems/Infamy/spec.yaml`.

This adds the last two armies, the Gauls and the Germans. They use the same rule shapes that already passed for the Britons, so nothing new is being tried; the tests check that every price, stat line, unit and support limit was copied correctly. R1 checks that the earlier armies have not changed.

The files are `Test.gst` and five catalogues: `Test.cat` (Late Republican Romans), `Test-EI.cat` (Early Imperial Romans), `Test-Britons.cat`, `Test-Gauls.cat` and `Test-Germans.cat`.

## Before you start

1. Remove the old "Infamy Infamy" game system and its catalogues from New Recruit, then load `Test.gst` and all five `.cat` files. Load the game system first.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Do GA1 and GA2 in one roster, in order, then GA5 in the same or a fresh Gauls roster. Do the same for the Germans.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top. If you cannot reach the file, say each case's result in the chat and I will record it.

## GA1: Gauls are offered, and one Warlord is required

What to do: Load the game system with all five catalogues. Start a new roster, check that "Gauls" is among the armies, pick it and add an Army force. Look at what is reported missing. Add one "Leader (Status III, Warlord)", then try to add a second.

What should happen: Gauls should be offered alongside the other four armies. The empty Army should report that it needs one Warlord. With one Leader (Status III, Warlord) it should clear. A second should show an error.

## GA2: Gauls: group prices add up in Points

What to do: In the same roster add one "Ambaxtoi, Noble Warriors" (18), two "Warriors" (13 each), one "Tribal Levy" (7) and one "Noble Cavalry" (15).

What should happen: Points should total 76 (10 + 18 + 13 + 13 + 7 + 15). Support should show 0 or nothing.

## GA3: Gauls: stat lines

What to do: Open the stat lines of these Groups. "Ambaxtoi, Noble Warriors": Elite Warriors, strength 10, Medium armour, Mixed weapons, Aggressive Attack 1, Step Out 1, Mob, Shieldwall, Fervour, 18 points. "Noble Cavalry": Elite Mounted Warriors, strength 6, Medium, Mixed, Aggressive Attack 1, Step Out 1, Stewards, 15 points. "Woodsman Archers": Skirmishers, strength 6, no armour, Bow, Aggressive Attack dash, Step Out 2, Darken the Sky, Woodsmen, Supra Numerum, 7 points. "British Mercenaries": Warriors, strength 10, Medium, Mixed, Aggressive Attack 2, Step Out 2, Mob, Fervour, 14 points.

What should happen: Each stat line and point cost should match. Write down any value that is wrong or missing.

## GA4: Gauls: which units are offered under each heading

What to do: Look at the units you can add under each heading in a Gauls Army.

What should happen: Foot Groups (6): Ambaxtoi Noble Warriors, Warriors, Fanatical Warriors, Tribal Levy, British Mercenaries, German Mercenaries. Skirmisher Groups (3): Tribal Javelins, Tribal Slingers, Woodsman Archers. Mounted Groups (2): Noble Cavalry, Tribal Cavalry. War Engines: nothing. No Roman or Briton-only units.

## GA5: Gauls: support options, costs and limits

What to do: In a Gauls roster look at the options under Support. Then add three Wagons (2 each), two Musicians (2), three Palisades (12 each), two Fortified Walls (20 each), three Faggots (2 each) and three Gallic Stewards (1 each). Note which give an error and read the Support total.

What should happen: The Support options should be: Supra Numerum Leader (Support), Gallic Stewards, Wagon, Musician, Faggots, Status I Leader (Support), Battering Ram, Status II Leader (Support), Palisade, Fortified Wall. There should be no Dyke, Chariots, Secret Way, Mule Train or Prepared Defences. Errors should appear on the third Wagon (limit 2), second Musician (limit 1), third Palisade (limit 2) and second Fortified Wall (limit 1). Faggots and Gallic Stewards should show no error. Support should total 6 + 4 + 36 + 40 + 6 + 3 = 95.

## GE1: Germans are offered, and one Warlord is required

What to do: Start a new roster, check that "Germans" is among the armies, pick it and add an Army force. Look at what is reported missing. Add one "Leader (Status III, Warlord)", then try to add a second.

What should happen: Germans should be offered. The empty Army should report that it needs one Warlord. With one Leader it should clear. A second should show an error.

## GE2: Germans: group prices add up in Points

What to do: In the same roster add one "Oathsworn Warriors" (17), two "Warriors" (15 each), one "Foederati" (17) and one "Germanic Cavalry" (11).

What should happen: Points should total 85 (10 + 17 + 15 + 15 + 17 + 11). Support should show 0 or nothing.

## GE3: Germans: stat lines

What to do: Open the stat lines of these Groups. "Oathsworn Warriors": Elite Warriors, strength 10, Light armour, Mixed weapons, Aggressive Attack 1, Step Out 1, Mob, Shieldwall, Fervour, Foot Cavalry, 17 points. "Foederati": Warriors, strength 8, Medium, Mixed, Aggressive Attack 1, Step Out 1, Mob, Fervour, Shieldwall, Roman Style, 17 points. "Germanic Cavalry": Mounted Warriors, strength 6, Light, Mixed, Aggressive Attack "Always", Step Out dash, Impetuous, Foot Cavalry, 11 points. "Foederati Cavalry": Mounted Warriors, strength 6, Medium, Mixed, Aggressive Attack 1, Step Out 1, Impetuous, 14 points.

What should happen: Each stat line and point cost should match. Write down any value that is wrong or missing.

## GE4: Germans: which units are offered under each heading

What to do: Look at the units you can add under each heading in a Germans Army.

What should happen: Foot Groups (5): Oathsworn Warriors, Warriors, Fanatical Warriors, Tribal Levy, Foederati. Skirmisher Groups (3): Tribal Javelins, Tribal Slingers, Woodsman Archers. Mounted Groups (2): Germanic Cavalry, Foederati Cavalry. War Engines: nothing.

## GE5: Germans: support options, costs and limits

What to do: In a Germans roster look at the options under Support. Then add three Wagons (2 each), two Musicians (2), two Secret Ways (4 each), three Wailing Women (2 each), three Arminius' Walls (3 each) and three Faggots (2 each). Note which give an error and read the Support total.

What should happen: The Support options should be: Supra Numerum Leader (Support), Wagon, Wailing Women, Musician, Faggots, Status I Leader (Support), Battering Ram, Arminius' Wall, Secret Way, Status II Leader (Support). There should be no Dyke, Palisade, Fortified Wall or Chariots. Errors should appear on the third Wagon (limit 2), second Musician (limit 1) and second Secret Way (limit 1). Wailing Women, Arminius' Walls and Faggots should show no error. Support should total 6 + 4 + 8 + 6 + 9 + 6 = 39.

## R1: The earlier armies still work

What to do: Start one roster with Late Republican Romans: add an Army, one Centurion, two Roman Legionaries and one Legionary Recruits. Start another with Britons: add an Army, one "Leader (Status III, Warlord)", two "Noble Warriors", two "Warriors" and one "Tribal Levy".

What should happen: Late Republican Romans should total 67 Points (10 + 22 + 22 + 13). Britons should total 83 Points (10 + 19 + 19 + 14 + 14 + 7).
