# Test plan: Infamy Infamy, Late Republican Romans (I1 to I7)

Data revision under test: 1. Source spec: `Kelvios/Boot-Camp`, `systems/Infamy/spec.yaml`.

This is the first build of a real game system, not an experiment. None of it has been run in the app before.

For this test the files are named `Test.gst` and `Test.cat` as usual, but the game system inside is called "Infamy Infamy" and the catalogue "Late Republican Romans".

## Before you start

1. Remove any old "Test" or "Infamy Infamy" game system and old test catalogues from New Recruit, then load `Test.gst` and `Test.cat`. Load the game system first.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Set the roster's cost limit high so it does not hide the rule under test. The Support cost has no default limit.
4. Do the cases in order in one roster: I2, I3 and I6 build on each other. Start a fresh roster for I1 and I5 if you like.
5. Write your results in `TestResults.md`, and note the New Recruit version at the top.

## I1: One Warlord is required

What to do: Load the game system "Infamy Infamy" and the catalogue "Late Republican Romans". Start a new roster and add an Army force. Look at what the roster says is missing. Then add one "Centurion (Status III, Warlord)". Then try to add a second Centurion.

What should happen: The empty Army should report that it needs one Warlord. With one Centurion added, that message should go away. The second Centurion should show an error, because the Army allows only one Warlord.

## I2: Group prices add up in Points

What to do: In the Army, add one Centurion (10 points), two "Roman Legionaries" (22 each) and one "Legionary Recruits" (13). Look at the roster totals.

What should happen: Points should total 67 (10 + 22 + 22 + 13). Support should show 0 or nothing.

## I3: Leader prices

What to do: Add to that Army one "Status II Leader (Optio if with Regular Drilled Troops)" (6), one "Status I Leader" (3) and one "Supra Numerum Leader" (1).

What should happen: Points should rise by 10, from 67 to 77.

## I4: The Group stat lines show correctly

What to do: Open the stat lines of these units and compare them with the expected lines. "Roman Legionaries": Warriors, strength 8, Heavy armour, Mixed and Pila weapons, Aggressive Attack 1, Step Out 1/2, characteristics Drilled and Triplex Acies. "Scorpion": Warriors, strength 5, Medium armour, Scorpion weapon, no Aggressive Attack or Step Out (shown as a dash), Supra Numerum. "Roman Cavalry": Mounted Warriors, strength 6, Medium armour, Mixed weapons, Aggressive Attack 1, Step Out 2, no characteristics. Also open the Centurion's leader line.

What should happen: Each stat line should match what is written here. The Centurion's leader line should read Status III, Command Initiatives 3, Command Range 9. Write down any value that is wrong or missing, and whether the Group and Leader lines are easy to read.

## I5: Which units are offered under each heading

What to do: Look at the units you can add under each heading in the Army.

What should happen: Foot Groups: Roman Legionaries, Legionary Recruits, Evocati (Veteran Legionaries), Expediti (Legionary Light Infantry), Allied Gallic Warriors, Iberian Caetrati. Skirmisher Groups: Numidian Skirmishers, Tribal Slingers. Mounted Groups: Roman Cavalry, Numidian Cavalry, Iberian Cavalry, Allied Germanic Cavalry, Allied Gallic Cavalry. War Engines: Scorpion. There should be no "Auxiliary Infantry" and no separate "Roman Engineers" Group. Leaders and Support have their own headings.

## I6: Support is costed separately from Points

What to do: In the same Army, add one "Musician" (2 support), one "Capsarius" (3 support) and one "Improvised Defences" (12 support). Look at both totals.

What should happen: Support should total 17 (2 + 3 + 12). Points should not change from the previous case (77).

## I7: The book's support limits show as errors

What to do: Add the following and note which additions give an error: a second Musician; a second Capsarius; a third Mule Train (add three); a third Exploratores (add three); a second Improvised Defences; one Prepared Defences and then a second; a second Engineer Group with Cart. Then add three Cratis and three Lilia and Tribuli.

What should happen: Each of these should show an error once you go past its limit: Musician 1, Capsarius 1, Mule Train 2, Exploratores 2, Improvised Defences 1, Prepared Defences 1, Engineer Group with Cart 1. Three Cratis and three Lilia and Tribuli should show no error, because the book sets no limit on them.
