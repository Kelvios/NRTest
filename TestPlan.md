# Test plan: TRIBAL free Skills for the Warlord, Heroes and Shaman (F1 to F7)

Data revision under test: Tribal2E revision 5 (published here as the shared test revision 14). Source spec: `Kelvios/Boot-Camp`, `systems/Tribal2E/spec.yaml`.

A player found that a force built with the Tribal files did not give the free Skills that the Warlord, each Hero and the Shaman provide. The book's rule is that the Warlord lets 1 Unit have 1 Elite Skill free (or 2 Units have 1 Veteran Skill each free), each Hero lets 1 Unit have 1 Veteran Skill free, and the Shaman does the same as a Hero. Until now this was only a sentence in each unit's notes.

This build adds a **Free Skills** heading with four credit options, each costing negative Honour. You take a credit when you buy the Skill it pays for. New Recruit cannot check which Skill you applied it to, so it is on the honour system, but it does limit how many credits you can take.

- Warlord, one Elite Skill: -2 Honour. One only.
- Warlord, Veteran Skill for a Unit: -1 Honour. Up to two. The Warlord's two options are alternatives: taking one stops the other.
- Each Hero, one Veteran Skill: -1 Honour. One per Hero in the roster.
- Shaman, one Veteran Skill: -1 Honour. One, and only with a Shaman in the roster.

Nothing else in the core rules was changed except the revision number, a new Free Skills heading, and the wording of the three notes. The Shaman is still not treated as a Character (that question is on hold).

The files are `Test.gst` and `Test.cat`.

## Before you start

1. Press update on the game system, or remove it and load `Test.gst` first, then `Test.cat`.
2. New Recruit does not add anything to a new roster for you. Every force and every unit has to be added by hand.
3. Set the roster's cost limit high (say 20 Honour) so it does not hide what is being tested.
4. Write your results in `TestResults.md`, and note the New Recruit version at the top. If you cannot reach the file, say each result in the chat.

## F1: The Free Skills options are there

What to do: Start a core roster, add a Warband force and the Warlord. Look for a "Free Skills" heading and read the options under it, with their costs.

What should happen: There should be four options: "Free Skill credit: Warlord, one Elite Skill (-2 Honour)", "Free Skill credit: Warlord, Veteran Skill for a Unit (-1 Honour, up to 2)", "Free Skill credit: each Hero, one Veteran Skill (-1 Honour)" and "Free Skill credit: Shaman, one Veteran Skill (-1 Honour)". Each shows its negative Honour cost. Open the Warlord's stat line: its Notes should tell you to take the matching credit under Free Skills when you buy the Skill.

## F2: The Warlord's free Elite Skill

What to do: With the Warlord in the roster, give the Warlord Seasoned (Elite Skill, 2 Honour). Then take the Warlord's Elite credit. Then try to take a second Elite credit.

What should happen: Honour should total 0 (Warlord 0, Seasoned 2, credit -2). The second Elite credit should show an error.

## F3: The Warlord's two free Veteran Skills, and the either-or rule

What to do: Start a fresh roster with the Warlord and one Warriors Formation. Give the Warlord Agile and the Warriors Cunning (both Veteran Skills, 1 Honour each). Take the Warlord's Veteran credit twice, then try a third. Then remove the Veteran credits and, with them gone, take the Elite credit; then try to add a Veteran credit as well.

What should happen: Honour should total 1 (Warlord 0, Warriors 1, Agile 1, Cunning 1, two credits -2). A third Veteran credit shows an error. With the Elite credit taken, a Veteran credit shows an error; and with a Veteran credit taken, the Elite credit shows an error. You can never hold both kinds at once.

## F4: A free Veteran Skill for each Hero

What to do: Start a fresh roster with the Warlord. Try to add a Hero's credit with no Hero. Then add one Warriors Formation and one Hero, and take the Hero credit. Try a second Hero credit. Then add a second Warriors Formation and a second Hero, and try the second credit again.

What should happen: The credit shows an error until there is a Hero in the roster. With one Hero, one credit is fine and a second shows an error. With two Heroes, two credits are fine and a third would show an error.

## F5: The Shaman's free Veteran Skill

What to do: Start a fresh core roster with the Warlord. Try to add the Shaman credit with no Shaman. Then add the Shaman (optional rule), give it Agile, and take the Shaman credit. Try a second Shaman credit. Read the Honour total.

What should happen: The credit shows an error until there is a Shaman. With a Shaman and Agile, Honour totals 1 (Shaman 1, Agile 1, credit -1; Warlord 0). A second Shaman credit shows an error.

## F6: A free Skill used on an Elite Skill costs 1 more

What to do: Start a fresh roster with the Warlord, one Warriors Formation and one Hero. Give the Warriors Seasoned (Elite Skill, 2 Honour). Take the Hero credit. Read the Honour total.

What should happen: Honour should total 3 (Hero 1, Warriors 1, Seasoned 2, Hero credit -1; Warlord 0). That is the book's rule that a Hero's free Skill can be upgraded to Elite for 1 more Honour.

## F7: The rest of the core rules are unchanged

What to do: Start a fresh roster with the Warlord, add a Hero and see whether it needs a Warriors Formation, then add a Formation. Add a second Shaman. Open a Hero's Skills and Historical Rules.

What should happen: The Hero shows an error until there is a Warriors Formation. A second Shaman shows an error. The Hero still has its Weapon Mastery group (Adept, Duellist, Champion, only one at a time) and its Armour group (Light or Heavy, only one at a time), working as before.
