import mods.clayium.ClayMachines;

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var obsidian = <minecraft:obsidian>;
var glass = <minecraft:glass>;

recipes.remove(<ironfurnaces:iron_furnace>);
recipes.addShaped(<ironfurnaces:iron_furnace>, [
    [iron, iron, iron],
    [<clayium:blockCompressedClay:2>, <minecraft:furnace>, <clayium:blockCompressedClay:2>],
    [iron, iron, iron]
]);

recipes.remove(<ironfurnaces:gold_furnace>);
//RecipeID, InputArray, Tier, OutputArray, ConsumingEnergy (10uCE), CraftingTime (ticks)
ClayMachines.addRecipe("Assembler", [<ironfurnaces:iron_furnace>, gold * 8], 3, [<ironfurnaces:gold_furnace>], 10, 120);

recipes.remove(<ironfurnaces:diamond_furnace>);
ClayMachines.addRecipe("Assembler", [<ironfurnaces:gold_furnace>, diamond * 2], 4, [<ironfurnaces:diamond_furnace>], 100, 120);

recipes.remove(<ironfurnaces:crystal_furnace>);
ClayMachines.addRecipe("Assembler", [<ironfurnaces:diamond_furnace>, glass * 8], 5, [<ironfurnaces:crystal_furnace>], 1000, 120);
ClayMachines.addRecipe("Assembler", [<ironfurnaces:obsidian_furnace>, glass * 4], 5, [<ironfurnaces:crystal_furnace>], 1000, 120);

<ironfurnaces:iron_furnace>.addTooltip("Cook Speed: " + format.white("2x"));
<ironfurnaces:gold_furnace>.addTooltip("Cook Speed: " + format.yellow("4x"));
<ironfurnaces:diamond_furnace>.addTooltip("Cook Speed: " + format.aqua("8x"));
<ironfurnaces:obsidian_furnace>.addTooltip("Cook Speed: " + format.aqua("8x"));
<ironfurnaces:crystal_furnace>.addTooltip("Cook Speed: " + format.lightPurple("20x"));

//game.setLocalization("ja_JP", "tooltip.furnace.cook_speed", "精錬速度: ");
//game.setLocalization("tooltip.furnace.cook_speed", "Cook Speed: ");