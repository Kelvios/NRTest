# Test plan: TRIBAL Primeval tribes, plus the Shaman as a Character (P1 to P11, SH1 to SH7)

Data revision under test: Tribal2E revision 5 (published here as the shared test revision 12). Source spec: `Kelvios/Boot-Camp`, `systems/Tribal2E/spec.yaml`.

This adds eight Primeval armies to the TRIBAL game system, one catalogue each: Neanderthals; Cro-Magnons (The Wolf, The Cat, The Bear); Denisovans; and Early Hominids (Homo Habilis, Homo Rudolfensis, Homo Erectus). It also carries the Shaman-as-a-Character change from the previous test (SH1 to SH7), which has not been signed off yet.

The Primeval armies use the core units under Primeval's own names (Chief for Warlord, Archers for Marksmen). Their Skill lists and special rules are the ones printed for each tribe. The animals and the optional Man's Best Friend dogs are not included yet.

The files are `Test.gst`, `Test.cat` (the core warband) and eight `Test-Primeval-....cat` files.

## Before you start

1. Press update on the game system, or remove the old one and load `Test.gst` first, then all the `.cat` files.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Set the roster's cost limit high (say 20 Honour) so it does not hide what is being tested.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top. If you cannot reach the file, say each result in the chat.

## P1: The Primeval armies are offered

What to do: Load the game system with all ten catalogue files. Start a new roster and look at the list of armies.

What should happen: Besides the core warband, you should see eight Primeval armies: Neanderthals; Cro-Magnons: The Wolf, The Cat and The Bear; Denisovans; and Early Hominids: Homo Habilis, Homo Rudolfensis and Homo Erectus.

## P2: Neanderthals: units, prices and one Chief

What to do: Start a Neanderthals roster and add a Warband force. Look at what is reported missing. Add the "Chief (Warlord)", then try to add a second. Look at which units you can add under each heading.

What should happen: The empty force should report that it needs one Warlord. One Chief clears it and a second Chief shows an error. You should be offered the Chief (Warlord), Heroes and Warriors (Formation of 5) only. There should be no Archers or Marksmen. Chief costs 0 Honour, a Hero 1 and a Warriors Formation 1.

## P3: Neanderthals: which Skills each unit is offered

What to do: On the Neanderthal Chief, open the Skills list and the Weapon Mastery group. Then do the same on a Hero and on a Warriors Formation.

What should happen: The Chief should be offered Fearsome, Ferocious Fighter, Savage, Tough, Strong and The One Who Knows, plus a Weapon Mastery pick of Adept [Skilled, short weapons only] or Champion (only one at a time). A Hero should have the same except The One Who Knows. A Warriors Formation should be offered only Fearsome, Savage and Adept [Skilled, short weapons only]. Nobody should be offered Throwing Weapons, Agile, Cunning, Seasoned, Tactician or Concealment.

## P4: Neanderthals: Skill prices and a built Honour total

What to do: Start a fresh Neanderthals roster with a Chief, one Hero and one Warriors Formation. Give the Chief The One Who Knows, Strong and Tough. Read the Honour total.

What should happen: Honour should total 7: Chief 0, Hero 1, Warriors 1, The One Who Knows 2, Strong 2, Tough 1. The Chief is at its limit of three Skills, so a fourth Skill should show an error.

## P5: Neanderthals: a Hero still needs a Formation

What to do: In a fresh Neanderthals roster add the Chief and one Hero. Then add one Warriors Formation. Then add a second Hero.

What should happen: The Hero should show an error until a Warriors Formation is in the roster (one Hero for each Formation of 5). With one Formation the first Hero is fine and a second Hero shows an error.

## P6: Cro-Magnons: Archers, and Skill lists for each totem

What to do: Start a Cro-Magnons: The Wolf roster. Add a Chief, a Hero, a Warriors Formation and one Archers Formation, then try a second Archers Formation. Read the Skills offered to each unit. Then look at the Chief's Skills in The Cat and The Bear rosters.

What should happen: One Archers Formation is allowed and a second shows an error. The Wolf Chief should be offered Agile, Throwing Weapons, Skin-Changer, Seasoned, Cunning and Tactician, plus Adept [Skilled, long weapons only]. The Hero is offered the same except Tactician, plus Lone Hunter. Warriors and Archers are offered Agile, Throwing Weapons, Seasoned, Cunning and Adept only, with no Skin-Changer, Tactician or Lone Hunter. In The Cat the totem Skills are Savage and Concealment (Chief only, 1 Honour). In The Bear they are Tough (1) and Strong (2), for Characters only.

## P7: Denisovans: no Archers, dearer Tactician, new Long Shot and Ranger

What to do: Start a Denisovans roster and look at the units offered. On the Chief look at the Skills and their prices, then do the same on a Warriors Formation.

What should happen: There should be no Archers or Marksmen. The Chief should be offered Agile, Fearsome, Skin-Changer, Throwing Weapons, Tough, Seasoned (2 Honour), Tactician (2 Honour, Chief only), Long Shot (1) and Ranger (1), plus Adept [Skilled]. Ranger is for Characters only, so a Warriors Formation should not see it, nor Skin-Changer, Tough or Tactician. A Warriors Formation should see Agile, Fearsome, Throwing Weapons, Seasoned, Long Shot and Adept.

## P8: Early Hominids: Homo Habilis and Homo Erectus use fists or a short weapon

What to do: Start a Homo Habilis roster. Add a Chief, a Hero and a Warriors Formation and look at the weapon choice on each. Look at the Skills on each. Then do the same for Homo Erectus.

What should happen: Each unit should offer a Weapon choice of "Fists, Feet and Teeth" (already selected) or Short Weapon, never both. Only the Chief and the Hero should have a Skills list; the Warriors Formation should have none. Habilis Characters are offered Cunning and Agile only. Homo Erectus Characters are offered Cunning, Throwing Weapons, and Tactician (Chief only).

## P9: Early Hominids: Homo Rudolfensis has no weapons

What to do: Start a Homo Rudolfensis roster and look at the options on the Chief, a Hero and a Warriors Formation.

What should happen: No unit should offer a weapon choice. Only Characters should have Skills, and only Strong (2 Honour) and Adept [Skilled] (1 Honour, a Weapon Mastery pick). There should be no Archers.

## P10: The tribes' special rules show on the units

What to do: Open a Neanderthal unit and look at its rules. Then look at a Cro-Magnon unit, a Denisovan unit and an Early Hominid unit.

What should happen: Neanderthal units should show the rules No Ranged Weapons, Stocky Build and Resilient. Cro-Magnon units should show Ranged Weapons, Forward Planning and the totem. Denisovan units should show No Ranged Weapons. Early Hominid units should show No Ranged Weapons, Early Weapons, Dominance! and their own species rule.

## P11: The core Warband still works

What to do: Start a roster with the core Warband catalogue. Add a Warlord, a Hero and a Warriors Formation, then add a Hero's Skills.

What should happen: The core Warband should offer exactly what it did before: its Skills, Historical Special Rules and Shaman. Nothing Primeval (Chief, Ferocious Fighter, Archers) should appear in it.

## SH1: The Shaman is offered, costs 1 Honour, and only one is allowed

What to do: In the core Warband catalogue, add a Warband force, add the Warlord, then add one "Shaman (optional rule)". Try to add a second Shaman. Look at the Honour total.

What should happen: The Honour total should be 1 (Warlord 0 plus Shaman 1). The second Shaman should show an error.

## SH2: The Shaman is now offered the Characters-only Skills

What to do: Open the Shaman's "Skills (choose up to 3)" list and its "Weapon Mastery Skill" group, and read every option.

What should happen: The list should include the four Skills newly added for the Shaman: Long Shot, Tough, Berserker and Strong. It should also still include Agile, Cunning, Deadly Shot, Fearsome, Hard Target, Ranger, Savage, Survival Instinct, Throwing Weapons, Seasoned, and the Shaman's own Curse, Divination, Healing, Rat Cunning and Evil Eye. The Weapon Mastery group should offer Adept, Duellist and Champion. The list should not include Tactician, Concealment, Respected, Revered or Elite Marksmen.

## SH3: Weapon Mastery Skills exclude each other and count toward the Shaman's 3 Skills

What to do: On the Shaman, take Adept, then Duellist, then Champion. Then take Tough and Strong, and keep adding Skills until you get an error.

What should happen: Each Weapon Mastery pick should replace the one before it, because only one of Adept, Duellist or Champion can be held. With Champion, Tough and Strong the Shaman is at three Skills with no error. A fourth Skill should show an error.

## SH4: The Shaman can take Heavy Armour, and only one kind of armour

What to do: On the Shaman, open "Historical Special Rules" and look for the Armour group. Take Light Armour, then Heavy Armour. Read the Honour total each time. Also read the other Historical Rules the Shaman is offered.

What should happen: There should be an Armour group offering Light and Heavy; taking Heavy after Light replaces Light. Light costs 0.5 Honour and Heavy costs 1. The Shaman should also be offered Cavalry, and should not be offered Chariots, Counting Coup, Assegai or Rally Around the Flag.

## SH5: Honour adds up for a built Shaman

What to do: Start a fresh core roster with the Warlord and one Shaman. Give the Shaman Tough (Veteran Skill), Strong (Elite Skill) and Heavy Armour. Read the Honour total.

What should happen: Honour should total 5 (Shaman 1, Tough 1, Strong 2, Heavy Armour 1; Warlord 0).

## SH6: The Shaman's note reads correctly

What to do: Open the Shaman's stat line and read the Notes text.

What should happen: The Notes should say the Shaman gets 1 free Veteran Skill for any 1 Unit, the same as a Hero's free Veteran Skill, and should no longer talk about a disagreement in the book.

## SH7: Heroes and the Warlord are unchanged

What to do: In the core roster add a Hero. Open its Skills and Historical Special Rules. Take Adept then Duellist, and Light Armour then Heavy Armour.

What should happen: The Hero should still have the Weapon Mastery group and the Armour group, each allowing only one pick at a time.
