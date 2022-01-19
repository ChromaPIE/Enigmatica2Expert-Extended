#modloaded computercraft

<computercraft:printout>.maxStackSize = 64;

	utils.rh(<computercraft:turtle:1>);
	utils.rh(<computercraft:turtle_advanced>.withTag({leftUpgrade: 5 as short}));

# Wired Modem
	recipes.remove(<computercraft:cable:1>);
	recipes.addShapedMirrored("Wired Modem", 
	<computercraft:cable:1>, 
	[[<ore:stone>, <ore:dustRedstone>, <ore:stone>],
	[<ore:stone>, <computercraft:cable>, <ore:stone>], 
	[<ore:stone>, <ore:dustRedstone>, <ore:stone>]]);

# Computer
	recipes.remove(<computercraft:computer>);
	recipes.addShapedMirrored("Computer", 
	<computercraft:computer>, 
	[[null, <opencomputers:screen1>, null],
	[<opencomputers:component>, <opencomputers:storage:2>, <opencomputers:component:6>], 
	[null, <opencomputers:case1>, null]]);

# Advanced Computers
	recipes.remove(<computercraft:computer:16384>);
	recipes.addShapedMirrored("Advanced Computer", 
	<computercraft:computer:16384>, 
	[[null, <opencomputers:screen2>, null],
	[<opencomputers:component:1>, <opencomputers:storage:3>, <opencomputers:component:8>], 
	[null, <opencomputers:case2>, null]]);

# Pocket Computer
	recipes.remove(<computercraft:pocket_computer>);
	scripts.wrap.immersiveengineering.MetalPress.addRecipe(<computercraft:pocket_computer>, <computercraft:computer>, <immersiveengineering:mold:0>, 2000);

# Advanced Pocket Computer
	recipes.remove(<computercraft:pocket_computer:1>);
	scripts.wrap.immersiveengineering.MetalPress.addRecipe(<computercraft:pocket_computer:1>, <computercraft:computer:16384>, <immersiveengineering:mold:0>, 2000);

# Get rid of recipe that uses every weapon in game
remakeEx(<plethora:module:1>, [
	[<ore:ingotFakeIron>, <ore:ingotFakeIron>, <ore:ingotFakeIron>],
	[<ore:blockGlass>, <ore:gemDiamondRat>, <actuallyadditions:block_laser_relay>],
	[null, null, <ore:ingotFakeIron>]]);

# Add missed items to JEI
mods.jei.JEI.addItem(<opencomputers:print>);
mods.jei.JEI.addItem(<opencomputers:misc>);
mods.jei.JEI.addItem(<opencomputers:robot>);

# Use Fake Iron recipe
# [Turtle] from [Computer][+2]
craft.remake(<computercraft:turtle_expanded>, ["pretty",
  "▬ ▬ ▬",
  "▬ C ▬",
  "▬ c ▬"], {
  "▬": <ore:ingotFakeIron>,      # Iron Alloy Ingot
  "C": <computercraft:computer>, # Computer
  "c": <ore:chest>,              # Oak Chest
});
