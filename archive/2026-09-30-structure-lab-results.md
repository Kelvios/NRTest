# Test results: Structure Lab (S1 to S5)

Data revision tested: 3

Date: 30SEP2026

New Recruit version: New Recruit 36.28

For each case, write PASS or FAIL on the Result line, then say in plain words what the app actually showed (which armies, forces or units appeared, and which did not).

## S1: Which armies the app offers

What should happen: You should be able to pick Army A, Army B and Army C. "Test Library" is a library, meant only to share content, so it should not be offered as an army. If it is offered, or an army is missing, write down what you see.

Result: PASS

## S2: A catalogue that imports the library's units (import_root on)

What should happen: You should be able to add both "A Fighter" (Army A's own) and "Library Fighter" (borrowed from the library).

Result: PASS

## S3: A catalogue that links to the library but does not import its units (import_root off)

What should happen: You should see "B Fighter" only. "Library Fighter" should not be offered.

Result: PASS

## S4: A catalogue with no link to the library

What should happen: You should see "C Fighter" only. "Library Fighter" should not be offered.

Result: PASS

## S5: A force and a category that exist in one catalogue only

What should happen: Army A should offer two forces, Warband and Champion Band. In Champion Band there should be a Champions heading and "A Champion" can be added. In Warband, "A Champion" should not be available, because Warband has no Champions heading. Army B should offer Warband only.

Result: PASS
