# Test plan: Tribal 2nd Edition revision 5, the Shaman as a Character (SH1 to SH7)

Data revision under test: Tribal2E revision 5 (published here as the shared test revision 11). Source spec: `Kelvios/Boot-Camp`, `systems/Tribal2E/spec.yaml`.

Kelvin ruled on 2026-10-02 that the Shaman is a Character. So the Shaman is now offered the Skills marked "Characters only" in the book (Long Shot, Tough, Berserker, Strong, Duellist, Champion) and Heavy Armour. The Weapon Mastery and Armour groups are built the same way as the Hero's, which already passed testing. Warlord-only Skills (Tactician, Concealment, Respected, Revered) are still not offered, and Chariots and Counting Coup are still not offered either, because the book names Warlord and Heroes, or Warriors or Heroes, for those.

The files are `Test.gst` and `Test.cat`. They replace the Infamy files that were here before (Infamy is now in its own repo, `Kelvios/InfamyInfamy`).

## Before you start

1. Remove any old game system from New Recruit that came from this NRTest repo, or press update and check that the game system is now TRIBAL 2nd Edition. Load `Test.gst` first, then `Test.cat`.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Set the roster's cost limit high (say 20 Honour) so it does not hide what is being tested.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top. If you cannot reach the file, say each result in the chat.

## SH1: The Shaman is offered, costs 1 Honour, and only one is allowed

What to do: Load the game system. Start a roster, add a Warband force, add the Warlord (it is required), then add one "Shaman (optional rule)". Then try to add a second Shaman. Look at the Honour total.

What should happen: The Honour total should be 1 (Warlord 0 plus Shaman 1). The second Shaman should show an error.

## SH2: The Shaman is now offered the Characters-only Skills

What to do: Open the Shaman's "Skills (choose up to 3)" list and its "Weapon Mastery Skill" group, and read every option.

What should happen: The list should include the four Skills newly added for the Shaman: Long Shot, Tough, Berserker and Strong. It should also still include Agile, Cunning, Deadly Shot, Fearsome, Hard Target, Ranger, Savage, Survival Instinct, Throwing Weapons, Seasoned, and the Shaman's own Curse, Divination, Healing, Rat Cunning and Evil Eye. The Weapon Mastery group should offer Adept, Duellist and Champion. The list should not include Tactician, Concealment, Respected, Revered or Elite Marksmen, which belong to the Warlord or to Marksmen only.

## SH3: Weapon Mastery Skills exclude each other and count toward the Shaman's 3 Skills

What to do: On the Shaman, take Adept, then take Duellist. Then take Champion. Then take Tough and Strong, and keep adding Skills until you get an error.

What should happen: Taking Duellist after Adept should replace Adept, because only one of Adept, Duellist or Champion can be held. Taking Champion should replace Duellist. The Weapon Mastery pick counts as one of the three Skills. With Champion, Tough and Strong the Shaman is at three Skills with no error. A fourth Skill should show an error.

## SH4: The Shaman can take Heavy Armour, and only one kind of armour

What to do: On the Shaman, open "Historical Special Rules" and look for the Armour group. Take Light Armour, then take Heavy Armour. Read the Honour total each time. Also read the other Historical Rules the Shaman is offered.

What should happen: There should be an Armour group offering Light Armour and Heavy Armour. Taking Heavy Armour after Light should replace Light. Light costs 0.5 Honour and Heavy costs 1. The Shaman should also be offered Cavalry, and should not be offered Chariots, Counting Coup, Assegai or Rally Around the Flag.

## SH5: Honour adds up for a built Shaman

What to do: Start a fresh roster with the Warlord and one Shaman. Give the Shaman Tough (Veteran Skill), Strong (Elite Skill) and Heavy Armour. Read the Honour total.

What should happen: Honour should total 5 (Shaman 1, Tough 1, Strong 2, Heavy Armour 1; Warlord 0).

## SH6: The Shaman's note reads correctly

What to do: Open the Shaman's stat line and read the Notes text.

What should happen: The Notes should say the Shaman gets 1 free Veteran Skill for any 1 Unit, the same as a Hero's free Veteran Skill, and should no longer talk about a disagreement in the book or about choosing what your group agreed.

## SH7: Heroes and the Warlord are unchanged

What to do: Add a Hero. Open its Skills and Historical Special Rules. Take Adept then Duellist, and take Light Armour then Heavy Armour.

What should happen: The Hero should still have the Weapon Mastery group (Adept, Duellist, Champion, only one at a time) and the Armour group (Light or Heavy, only one at a time), working as they did before. The Hero's note still mentions its own free Veteran Skill.
