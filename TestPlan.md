# Test plan: Infamy Infamy, Early Imperial Romans (E1 to E7)

Data revision under test: 1. Source spec: `Kelvios/Boot-Camp`, `systems/Infamy/spec.yaml`.

This adds the second army to the same game system. The Late Republican Romans army was tested earlier and passed, so E7 only checks it has not changed.

The files are `Test.gst`, `Test.cat` (Late Republican Romans) and `Test-EI.cat` (Early Imperial Romans). The game system inside is called "Infamy Infamy".

## Before you start

1. Remove the old "Infamy Infamy" game system and catalogues from New Recruit, then load `Test.gst`, `Test.cat` and `Test-EI.cat`. Load the game system first.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Do E2, E3 and E6 in one roster, in order, because they build on each other.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top.

## E1: Both armies are offered

What to do: Load the game system "Infamy Infamy" with both catalogues. Start a new roster and look at the list of armies.

What should happen: You should be able to pick "Late Republican Romans" and "Early Imperial Romans". Pick Early Imperial Romans for the cases below unless a case says otherwise.

## E2: One Warlord is required

What to do: In an Early Imperial Romans roster, add an Army force. Look at what is reported as missing. Add one "Centurion (Status III, Warlord)", then try to add a second.

What should happen: The empty Army should report that it needs one Warlord. With one Centurion it should clear. A second Centurion should show an error.

## E3: Group prices add up in Points

What to do: Add one Centurion (10 points), two "Roman Legionaries" (21 each), one "Roman Auxiliary Foot" (19) and one "Roman Auxiliary Archers" (12).

What should happen: Points should total 83 (10 + 21 + 21 + 19 + 12). Support should show 0 or nothing.

## E4: Stat lines that differ from the Late Republic

What to do: Open the stat lines of these Groups. "Roman Legionaries": Warriors, strength 8, Heavy armour, Mixed and Pila weapons, Aggressive Attack 1, Step Out 1/2, characteristic Drilled only (the Late Republic version also has Triplex Acies). "Cohortes Praetoriae": Inferior Warriors, strength 8, Heavy, Mixed and Pila, Aggressive Attack 2, Step Out 2, Drilled, 18 points. "Roman Alea Cavalry": Mounted Warriors, strength 6, Medium, Mixed, Aggressive Attack "Always", Step Out 1, Impetuous, 14 points. "Armed Servants & Slaves": Inferior Warriors, strength 6, no armour, Hand to Hand Only, Aggressive Attack and Step Out shown as a dash, no characteristics, 4 points.

What should happen: Each stat line and point cost should match. Write down any value that is wrong or missing.

## E5: Which units are offered under each heading

What to do: Look at the units you can add under each heading in an Early Imperial Romans Army.

What should happen: Foot Groups (9): Roman Legionaries, Legionary Recruits, Cohortes Praetoriae, Evocati (Veteran Legionaries), Roman Auxiliary Foot, Allied Tribal Warriors, Cohors Urbanae, Roman Ex-Legionary Colonist, Armed Servants & Slaves. Skirmisher Groups (2): Roman Auxiliary Archers, Tribal Slingers. Mounted Groups (4): Roman Alea Cavalry, Auxiliary Cavalry, Allied Tribal Cavalry, Allied Noble Cavalry. War Engines (1): Scorpion. There should be no separate "Roman Engineers" Group and no Late Republic units such as "Numidian Cavalry".

## E6: Support costs and limits

What to do: In the same roster, add one Musician (2), one Capsarius (3) and one Improvised Defences (12) and look at the totals. Then add a second Musician, a second Capsarius, a third Mule Train (add three) and a second Improvised Defences. Finally add three Cratis.

What should happen: Support should total 17 and Points should stay at 83. The second Musician, second Capsarius, third Mule Train (limit 2) and second Improvised Defences should each show an error. Three Cratis should show no error.

## E7: The Late Republic army still works

What to do: Start a separate roster with Late Republican Romans. Add an Army force, one Centurion, two "Roman Legionaries" and one "Legionary Recruits".

What should happen: Points should total 67 (10 + 22 + 22 + 13), as in the earlier test. In this army "Roman Legionaries" cost 22 and have Drilled and Triplex Acies. No Early Imperial units should appear.
