var obsidian = <minecraft:obsidian>;
var clay3 = <clayium:blockCompressedClay:3>;
var clay4 = <clayium:blockCompressedClay:4>;

recipes.addShaped(<minecraft:enchanting_table>, [
    [null, <minecraft:book>, null],
    [<minecraft:diamond>, <clayium:blockMachineHull:3>, <minecraft:diamond>],
    [clay3, clay3, clay3]
]);

recipes.addShaped(<personalspace:personalPortal>, [
    [obsidian, obsidian, obsidian],
    [obsidian, <minecraft:enchanting_table>, obsidian],
    [obsidian, obsidian, obsidian]
]);
recipes.addShaped(<personalspace:personalPortal>, [
    [clay4, clay4, clay4],
    [clay4, <minecraft:enchanting_table>, clay4],
    [clay4, clay4, clay4]
]);