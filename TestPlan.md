# Test plan: Structure Lab (S1 to S5)

Data revision under test: 3. Source spec: `Kelvios/Boot-Camp`, `templates/experiments/structure.spec.yaml`.

This lab checks how several catalogues work together in one game system. None of it has been run in the app before.

Unlike earlier labs it needs four catalogue files, not one, so this test bench holds `Test.gst`, `Test.cat` (Army A), `Test-Library.cat`, `Test-B.cat` and `Test-C.cat`.

## Before you start

1. Remove the old "Test" game system from New Recruit if it is still loaded, then load the new `Test.gst` and all four `.cat` files. Load the game system first.
2. New Recruit does not add anything to a new roster for you. Every force and every unit in these cases has to be added by hand, as the steps say.
3. Set the roster's cost limit high (50 Honour). The words used for menus (force, detachment, catalogue, army) may differ in the app. If they do, just say what the app calls them.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top.

## S1: Which armies the app offers

What to do: Load the game system "Test" with all four catalogue files (`Test.cat`, `Test-Library.cat`, `Test-B.cat`, `Test-C.cat`). Start a new roster and look at the list of armies (catalogues) you can pick from.

What should happen: You should be able to pick Army A, Army B and Army C. "Test Library" is a library, meant only to share content, so it should not be offered as an army. If it is offered, or an army is missing, write down what you see.

## S2: A catalogue that imports the library's units (import_root on)

What to do: Start a roster with Army A. Add a Warband force. Add the unit "A Leader". Then open the list of Fighters you can add.

What should happen: You should be able to add both "A Fighter" (Army A's own) and "Library Fighter" (borrowed from the library).

## S3: A catalogue that links to the library but does not import its units (import_root off)

What to do: Start a roster with Army B. Add a Warband force. Add the unit "B Leader". Then open the list of Fighters you can add.

What should happen: You should see "B Fighter" only. "Library Fighter" should not be offered.

## S4: A catalogue with no link to the library

What to do: Start a roster with Army C. Add a Warband force. Add the unit "C Leader". Then open the list of Fighters you can add.

What should happen: You should see "C Fighter" only. "Library Fighter" should not be offered.

## S5: A force and a category that exist in one catalogue only

What to do: Start a roster with Army A and look at which forces you can add. Add a "Champion Band" force, add "A Leader", and look for a Champions heading and the unit "A Champion". Then add a Warband force to the same roster, add "A Leader" to it, and check whether "A Champion" can be added there. Finally start a roster with Army B and look at which forces you can add.

What should happen: Army A should offer two forces, Warband and Champion Band. In Champion Band there should be a Champions heading and "A Champion" can be added. In Warband, "A Champion" should not be available, because Warband has no Champions heading. Army B should offer Warband only.
