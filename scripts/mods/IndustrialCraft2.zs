import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.ic2.ScrapBox;
import scripts.requiousJei.add_ic2_crops as crop;
#modloaded ic2

# Buff from 100
<ic2:wrench>.maxDamage = 5000;

# Hydrated Coal Dust recipe consumes containers that can store 1000mB + liquid, this fixes that
	recipes.remove(<ic2:dust:3>);
	recipes.addShapeless("ic2_hydrated_coal_dust_liquid_fix", <ic2:dust:3>, [<ore:dustCoal>, <liquid:water> * 1000]);
  furnace.remove(<ic2:dust:2>);
  furnace.addRecipe(<thermalfoundation:material:768>, <ic2:dust:3>);

# Removing IC2 coal coke
	recipes.remove(<ic2:coke>);
	
# Batch Crafter, unintended behaviour
	recipes.remove(<ic2:te:89>);

# Jetpacks	
	recipes.remove(<ic2:jetpack_electric>.anyDamage());
	recipes.remove(<ic2:jetpack:27>.anyDamage());

	recipes.addShapedMirrored("IC2 Electric Jetpack", 
	<ic2:jetpack_electric>, 
	[[<ic2:casing:5>, <minecraft:web>, <ic2:casing:5>],
	[<ore:circuitAdvanced>, <ic2:batpack>.anyDamage(), <ore:circuitAdvanced>], 
	[<ic2:casing:5>, null, <ic2:casing:5>]]);
	
	recipes.addShapedMirrored("IC2 Jetpack", 
	<ic2:jetpack:27>, 
	[[<ic2:casing:5>, <minecraft:web>, <ic2:casing:5>],
	[<ore:circuitAdvanced>, <ic2:te:29>, <ore:circuitAdvanced>], 
	[<ic2:casing:5>, null, <ic2:casing:5>]]);

# Hazmat/Rubber Armor
	recipes.addShaped("Hazmat ", <ic2:hazmat_helmet>, 
	[[<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>],
	[<ore:itemRubber>, <ore:blockGlass>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:barsIron>, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Chest", <ic2:hazmat_chestplate>, 
	[[<ore:itemRubber>, null, <ore:itemRubber>],
	[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Leggings", <ic2:hazmat_leggings>,
	 [[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>],
	 [<ore:itemRubber>, null, <ore:itemRubber>],
	  [<ore:itemRubber>, null, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Boots", <ic2:rubber_boots>, 
	[[<ore:itemRubber>, null, <ore:itemRubber>],
	[<ore:itemRubber>, null, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:dyeBlack>, <ore:itemRubber>]]);


# Clay Dust 
	recipes.addShapeless("Clay Dust", 
	<ic2:dust:1>, [<minecraft:clay>, <ore:craftingToolForgeHammer>]);

# Bronze
	recipes.remove(<ic2:resource:5>);
	recipes.remove(<ic2:ingot:1>);
	
# Batch Crafter
	recipes.remove(<ic2:te:89>);
	recipes.addShaped("Batch Crafter", <ic2:te:89>, 
	[[null, <ic2:te:88>, null],
	[<ore:circuitAdvanced>, <ic2:resource:13>, <ore:circuitAdvanced>], 
	[<ore:craftingToolForgeHammer>, <thermalfoundation:wrench>.anyDamage(), <ore:craftingToolForgeHammer>]]);

# Jetpack Attachment Plate, recipe needs oredict
	recipes.remove(<ic2:crafting:37>);
	recipes.addShapedMirrored("Jetpack Attachment Plate", 
	<ic2:crafting:37>, 
	[[<ore:nuggetIridium>, <ic2:crafting:3>, <ore:nuggetIridium>],
	[<ic2:crafting:15>, <ore:plateSteel>, <ic2:crafting:15>], 
	[<ore:nuggetIridium>, <ic2:crafting:3>, <ore:nuggetIridium>]]);
	
#  Overclocker Upgrade
	recipes.remove(<ic2:upgrade>);
	scripts.wrap.forestry.Carpenter.addRecipe(<ic2:upgrade> * 2, 
	[[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[<ic2:cable>, <ore:circuitBasic>, <ic2:cable>],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]], 40, <liquid:ic2coolant> * 3000);

# Iridium Reinforced Plate, recipe needs oredict
	recipes.remove(<ic2:crafting:4>);
	recipes.addShapedMirrored("Iridium Reinforced Plate", 
	<ic2:crafting:4>, 
	[[<ore:ingotIridium>, <ic2:crafting:3>, <ore:ingotIridium>],
	[<ic2:crafting:3>, <ore:gemDiamondRat>, <ic2:crafting:3>], 
	[<ore:ingotIridium>, <ic2:crafting:3>, <ore:ingotIridium>]]);

# Reactor Chamber
	recipes.remove(<ic2:te:24>);
	recipes.addShaped("IC2 Reactor Chamber", 
	<ic2:te:24> * 2, 
	[[null, <ore:plateDenseLead>, null],
	[<ore:plateDenseLead>, <ic2:resource:12>, <ore:plateDenseLead>], 
	[null, <ore:plateDenseLead>, null]]);

# Basic Machine Casing
	recipes.remove(<ic2:resource:12>);
	recipes.addShapedMirrored("Basic Machine Casing1", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminum>, <tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateAluminum>],
	[<tconstruct:large_plate>.withTag({Material: "iron"}), null, <tconstruct:large_plate>.withTag({Material: "iron"})], 
	[<ore:plateAluminum>, <tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateAluminum>]]);
	
	recipes.addShapedMirrored("Basic Machine Casing2", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminium>, <ore:plateDenseIron>, <ore:plateAluminium>],
	[<ore:plateDenseIron>, null, <ore:plateDenseIron>], 
	[<ore:plateAluminium>, <ore:plateDenseIron>, <ore:plateAluminium>]]);
	
	recipes.addShapedMirrored("Basic Machine Casing3", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminium>, <ore:plateDenseTin>, <ore:plateAluminium>],
	[<ore:plateDenseTin>, null, <ore:plateDenseTin>], 
	[<ore:plateAluminium>, <ore:plateDenseTin>, <ore:plateAluminium>]]);

# Reinforced Stone
	recipes.addShapedMirrored("Reinforced Stone", 
	<ic2:resource:11> * 16, 
	[[<minecraft:stone:*>, <tconstruct:soil>, <minecraft:stone:*>],
	[<tconstruct:soil>, <ore:dustClay>, <tconstruct:soil>], 
	[<minecraft:stone:*>, <tconstruct:soil>, <minecraft:stone:*>]]);

# Iridium TiC Compat
	scripts.wrap.tconstruct.Melting.addRecipe(<liquid:iridium> * 144, <ic2:misc_resource:1>, 500);
	scripts.wrap.tconstruct.Melting.addRecipe(<liquid:iridium> * 16, <ic2:misc_resource:2>, 200);

# Lapis Dust
	recipes.remove(<ic2:dust:9>);

# Diamond Dust
	recipes.remove(<ic2:dust:5>);
	
# IC2 Block Cutting blades
val envelop = ["aaa","aBa","aaa"] as string[];
craft.remake(<ic2:block_cutting_blade>,   envelop, {B:<ore:stone>,         a:<tconstruct:large_sword_blade>.withTag({Material: "iron"})});
craft.remake(<ic2:block_cutting_blade:1>, envelop, {B:<ore:blockFakeIron>, a:<tconstruct:large_sword_blade>.withTag({Material: "steel"})});
craft.remake(<ic2:block_cutting_blade:2>, envelop, {B:<ore:blockDiamond>,  a:<tconstruct:large_sword_blade>.withTag({Material: "alumite"})});

# New Scraps
ScrapBox.addDrop(<appliedenergistics2:material:6>, 4.0F);
ScrapBox.addDrop(<thermalfoundation:diagram_redprint>, 3.1F);
ScrapBox.addDrop(<thermalfoundation:material:864>, 2.8F);
ScrapBox.addDrop(<mekanism:substrate>, 2.4F);
ScrapBox.addDrop(<mekanismgenerators:hohlraum>, 2.1F);
ScrapBox.addDrop(<rftools:syringe>, 1.7F);
ScrapBox.addDrop(<mekanism:mufflingupgrade>, 1.5F);
ScrapBox.addDrop(<industrialforegoing:plastic>, 1.1F);
ScrapBox.addDrop(<mekanism:polyethene:2>, 0.9F);
ScrapBox.addDrop(<nuclearcraft:upgrade:1>, 0.9F);
ScrapBox.addDrop(<nuclearcraft:upgrade>, 0.9F);
ScrapBox.addDrop(<appliedenergistics2:material:52>, 0.6F);
ScrapBox.addDrop(<immersiveengineering:material:5>, 0.6F);
ScrapBox.addDrop(<extrautils2:decorativesolid:3>, 0.4F);
ScrapBox.addDrop(<extrautils2:decorativesolid:7>, 0.4F);
ScrapBox.addDrop(<immersiveengineering:stone_decoration:8>, 0.4F);
ScrapBox.addDrop(<industrialforegoing:pink_slime>, 0.3F);
ScrapBox.addDrop(<rftools:shape_card>, 0.3F);
ScrapBox.addDrop(<appliedenergistics2:fluix_block>, 0.2F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:1>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:2>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:3>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:4>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:5>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard>, 0.1F);
ScrapBox.addDrop(<extrautils2:klein>, 0.1F);
ScrapBox.addDrop(<immersiveengineering:material:26>, 0.1F);
ScrapBox.addDrop(<psi:cad_colorizer_:17>, 0.1F);
ScrapBox.addDrop(<thermalexpansion:frame:64>, 0.05F);
ScrapBox.addDrop(<rftoolsdim:dimlet_parcel>, 0.03F);
ScrapBox.addDrop(<forestry:chipsets:0>.withTag({T:0 as short}), 0.1F);
ScrapBox.addDrop(<forestry:chipsets:1>.withTag({T:1 as short}), 0.06F);
ScrapBox.addDrop(<forestry:chipsets:2>.withTag({T:2 as short}), 0.04F);
ScrapBox.addDrop(<forestry:chipsets:3>.withTag({T:3 as short}), 0.01F);

# Energy crystal compat
scripts.process.compress(<ic2:dust:6> * 9, <ic2:energy_crystal:27>, "except: compressor");

# Harder wooden box
craft.remake(<ic2:te:111>, ["pretty",
		"A B A",
		"B C B",
		"A B A"], {
	A: <ore:logWood>,
	B: <ore:plankWood>,
	C: <quark:iron_button>,
	});

# Construction foam
# Remove CF Powder but replace it with Building Gadget's powder
scripts.process.solution([<buildinggadgets:constructionpaste>], [<fluid:water> * 4000], [<fluid:ic2construction_foam> * 4000], null, "Except: highoven");

# [Solar Panel] from [Pulverized Coal][+3]
craft.remake(<ic2:te:8>, ["pretty",
  "◊ ◊ ◊",
  "□ © □",
  "□ B □"], {
  "□": <ore:plateIron>, # Iron Plate
  "B": <ore:circuitBasic>, # Electronic Circuit
  "©": <ore:dustCoal>, # Pulverized Coal
  "◊": <ore:gemLapis>, # Lapis Lazuli
});

# [Solar Panel] batch crafting
scripts.processUtils.avdRockXmlRecipeEx(
	"PrecisionAssembler", [
	<ore:plateIron> * 64,
	<ore:gemLapis> * 48,
	<ore:circuitBasic> * 16,
	<ore:dustCoal> * 16,
], null, [<ic2:te:8> * 16], null, {power: 120000, timeRequired: 100});
	
# Remove Recycler (replaced by Modular Machine)
recipes.remove(<ic2:te:48>);

# [Solar Helmet] from [Solar Panel][+2]
craft.remake(<ic2:solar_helmet>, ["pretty",
  "  I  ",
  "  2  ",
  "C C C"], {
  "2": <ore:ic2SolarPanel>, # Solar Panel
  "C": <ore:itemCopperCable>, # Insulated Copper Cable
  "I": <conarm:helmet_core>.withTag({Material: "iron"}), # Iron Helmet Core
});

# Crafts from ini file
for out, inp in {
	<advancedrocketry:productplate:1>: <ore:ingotTitaniumIridium>,
	<advancedrocketry:productplate>  : <ore:ingotTitaniumAluminide>,
	<immersiveengineering:metal:35>  : <ore:ingotUranium>,
	<libvulpes:productplate:3>       : <ore:ingotSilicon>,
	<libvulpes:productplate:7>       : <ore:ingotTitanium>,
	<redstonearsenal:material:128>   : <ore:ingotElectrumFlux>,
	<thermalfoundation:material:322> : <ore:ingotSilver>,
	<thermalfoundation:material:324> : <ore:ingotAluminum>,
	<thermalfoundation:material:325> : <ore:ingotNickel>,
	<thermalfoundation:material:326> : <ore:ingotPlatinum>,
	<thermalfoundation:material:327> : <ore:ingotIridium>,
	<thermalfoundation:material:328> : <ore:ingotMithril>,
	<thermalfoundation:material:353> : <ore:ingotElectrum>,
	<thermalfoundation:material:354> : <ore:ingotInvar>,
	<thermalfoundation:material:356> : <ore:ingotConstantan>,
	<thermalfoundation:material:357> : <ore:ingotSignalum>,
	<thermalfoundation:material:358> : <ore:ingotLumium>,
	<thermalfoundation:material:359> : <ore:ingotEnderium>,
} as IIngredient[IItemStack] {
	scripts.wrap.ic2.MetalFormer.addRollingRecipe(out, inp);
}

# Remake Dust compession recipes
function tinyDustFix(a as IItemStack, b as IItemStack) as void {
	recipes.addShapeless("Pack " ~ a.displayName, b, [a,a,a,a,a,a,a,a,a]);
}

tinyDustFix(<ic2:dust:22>, <ic2:dust:9>);
tinyDustFix(<ic2:dust:25>, <thermalfoundation:material:770>);
tinyDustFix(<ic2:dust:28>, <thermalfoundation:material:65>);
tinyDustFix(<ic2:dust:35>, <actuallyadditions:item_dust:3>);
tinyDustFix(<ic2:dust:18>, <thermalfoundation:material:99>);
tinyDustFix(<ic2:dust:24>, <ic2:dust:11>);
tinyDustFix(<ic2:dust:27>, <thermalfoundation:material:771>);

# Crystal memory crafts
function crystalRecipe(name as string, item as IItemStack, ingrs as IIngredient[]) {
	recipes.remove(item);
	recipes.addShapeless(name, <ic2:crystal_memory>.withTag({Pattern: {id: item.definition.id, Count: 1 as byte, Damage: item.damage as short}}), ingrs);
	scripts.category.tooltip_utils.desc.both(item, "crystal_memory");
}

crystalRecipe("[Shape Card] crystal", <rftools:shape_card>,      [<ore:circuitElite>, <immersiveengineering:blueprint>.withTag({blueprint: "molds"}), <ic2:crystal_memory>, <ore:paper>, <ore:paper>]);
crystalRecipe("[Base Addon] crystal", <teslacorelib:base_addon>, [<industrialforegoing:plastic>, <industrialforegoing:plastic>, <ic2:crystal_memory>, <ore:paper>, <ore:paper>]);

# [Replicator] from [Energium Ingot][+3]
craft.remake(<ic2:te:63>, ["pretty",
  "C ▬ C",
  "C ▬ C",
  "M M M"], {
  "C": <ic2:containment_plating>, # Containment Reactor Plating
  "▬": <ore:ingotEnergium>,       # Energium Ingot
  "M": <ic2:te:75>,   # MFSU
});

# [Heat-Capacity Reactor Plating] from [Dense Copper Plate][+1]
craft.reshapeless(<ic2:heat_plating>, "п□", {
  "□": <ore:plateDenseCopper>, # Dense Copper Plate
  "п": <ore:plateLead>,        # Lead Plate
});

# [Containment Reactor Plating] from [Lead Plate][+1]
craft.reshapeless(<ic2:containment_plating>, "п□□□", {
  "□": <ore:plateAdvancedAlloy>, # Advanced Alloy
  "п": <ore:plateLead>, # Lead Plate
});

# Reprocess plutonium
mods.nuclearcraft.decay_hastener.addRecipe([<ic2:nuclear:3>, <nuclearcraft:uranium:4>, 2.0, 2.0]);
mods.nuclearcraft.decay_hastener.addRecipe([<ic2:nuclear:7>, <nuclearcraft:uranium:6>, 2.0, 2.0]);

# Batch crafting recipe for reflector, skipping microcraftings
scripts.processUtils.avdRockXmlRecipeEx("PrecisionAssembler", [
	<ore:plateCopper> * 64, # Copper Plate
	<ore:dustTin> * 64,     # Pulverized Tin
	<ore:dustCoal> * 64,    # Pulverized Coal
	<ic2:crafting:4>,       # Iridium Reinforced Plate
], null,
	[<ic2:iridium_reflector>], null, {power: 160000, timeRequired: 80}
);

# [Quad Fuel Rod (Uranium)] from [Enriched Uranium Nuclear Fuel]*4[+1]
mods.cyclicmagic.Packager.addRecipe(<ic2:quad_uranium_fuel_rod>, [
	<ic2:nuclear> * 4,            # Enriched Uranium Nuclear Fuel
	<bigreactors:reactorfuelrod>, # Reactor Fuel Rod (Legacy)
]);

# [Quad Fuel Rod (MOX)] from [MOX Nuclear Fuel]*4[+1]
mods.cyclicmagic.Packager.addRecipe(<ic2:quad_mox_fuel_rod>, [
	<ic2:nuclear:4> * 4,          # MOX Nuclear Fuel
	<bigreactors:reactorfuelrod>, # Reactor Fuel Rod (Legacy)
]);

# Milk Powder
scripts.process.evaporate(<fluid:milk> * 250, <ic2:dust:33>, "No exceptions");
scripts.process.solution([<ic2:dust:33>], [<fluid:water> * 250], [<fluid:milk> * 250], null, "Except: highoven");

# Stone dust alt usage
furnace.addRecipe(<tconstruct:materials>, <ore:dustStone>);

# [Treated Wood Planks]*8 from [Creosote Bucket][+1]
craft.make(<immersiveengineering:treated_wood> * 8, ["pretty",
  "# # #",
  "# ~ #",
  "# # #"], {
  "#": <ore:plankWood>, # Oak Wood Planks
  "~": <fluid:ic2creosote> * 1000, # Creosote Bucket
});

# Alternative without scrap
# [Fertilizer]*2 from [Fertilizer][+1]
craft.shapeless(<ic2:crop_res:2> * 3, "eFFF", {
  "e": <ic2:crop_res:2>,     # Fertilizer
  "F": <ore:fertilizer>, # Fertilizer
});

# Scrap making from seed bags
scripts.process.crush(<ic2:crop_seed_bag>, <ic2:crafting:23>, "only: Macerator", null, null);


# --------------------------------------------------------------------------------------------
# CROPS
# --------------------------------------------------------------------------------------------

#    Name           | Drops                                                          | Tier | Attributes                                  | "Special requirements"                                                                                                                            |
crop("weed"          , [<ic2:crop_res:5>]                                              , 0 , "Weed Bad"                                    , "§6Can only be harvested with §nWeeding Trowel§r§6; Takes over neighboring plants and spreads grass");
crop("beetroots"     , [<minecraft:beetroot>]                                          , 1 , "Red Food Beetroot"                           );
crop("pumpkin"       , [<minecraft:pumpkin>]                                           , 1 , "Orange Decoration Stem"                      );
crop("wheat"         , [<minecraft:wheat>]                                             , 1 , "Yellow Food Wheat"                           , "§6Light level of at least 9");
crop("blackthorn"    , [<minecraft:dye>]                                               , 2 , "Black Flower Rose"                           , "§6Light level of at least 12");
crop("brown_mushroom", [<minecraft:brown_mushroom>]                                    , 2 , "Brown Food Mushroom"                         , "§6Must be hydrated");
crop("carrots"       , [<minecraft:carrot>]                                            , 2 , "Orange Food Carrots"                         , "§6Light level of at least 9");
crop("cyazint"       , [<minecraft:dye:6>]                                             , 2 , "Blue Flower"                                 , "§6Light level of at least 12");
crop("dandelion"     , [<minecraft:dye:11>]                                            , 2 , "Yellow Flower"                               , "§6Light level of at least 12");
crop("flax"          , [<minecraft:string>]                                            , 2 , "Silk Vine Addictive"                         );
crop("melon"         , [<minecraft:melon>,<minecraft:melon_block>]                     , 2 , "Green Food Stem"                             );
crop("potato"        , [<minecraft:potato>,<minecraft:poisonous_potato>]               , 2 , "Yellow Food Potato"                          , "§6Light level of at least 9; Must be harvested early or it will drop §nPoisonous Potato");
crop("red_mushroom"  , [<minecraft:red_mushroom>]                                      , 2 , "Red Food Mushroom"                           , "§6Must be hydrated");
crop("reed"          , [<minecraft:reeds>]                                             , 2 , "Reed"                                        );
crop("rose"          , [<minecraft:dye:1>]                                             , 2 , "Red Flower Rose"                             , "§6Light level of at least 12");
crop("tulip"         , [<minecraft:dye:5>]                                             , 2 , "Purple Flower Tulip"                         , "§6Light level of at least 12");
crop("cocoa"         , [<minecraft:dye:3>]                                             , 3 , "Brown Food Stem"                             , "§6Nutrients of at least 3");
crop("venomilia"     , [<minecraft:dye:5>,<ic2:crop_res:3>]                            , 3 , "Purple Flower Tulip Poison"                  , "§6Light level of at least 12; Only drops §nGrin Powder§r§6 during second to last stage; at which point the plant is poisonous to touch unless sneaking");
crop("stickreed"     , [<minecraft:reeds>,<ic2:misc_resource:4>]                       , 4 , "Reed Resin"                                  , "§6Drops §nSticky Resin§r§6 only when mature");
crop("corpse_plant"  , [<minecraft:rotten_flesh>,<minecraft:dye:15>,<minecraft:bone>]  , 5 , "Toxic Undead Vine Edible Rotten"             );
crop("hops"          , [<ic2:crop_res:4>]                                              , 5 , "Green Ingredient Wheat"                      , "§6Light level of at least 9");
crop("nether_wart"   , [<minecraft:nether_wart>]                                       , 5 , "Red Nether Ingredient Soulsand"              , "§6Grows faster with §nSoul Sand§r§6 under it; Turns into §nTerra Wart§r§6 if there is Snow under it");
crop("terra_wart"    , [<ic2:terra_wart>]                                              , 5 , "Blue Aether Consumable Snow"                 , "§6Grows faster with §nSnow§r§6 under it; Turns into §nNether Wart§r§6 if there is §nSoul Sand§r§6 under it");
crop("aurelia"       , [<ic2:dust:20>]                                                 , 6 , "Gold Leaves Metal"                           , "§6Only matures if there is a §nGold Ore§r§6 or §nBlock of Gold§r§6 below it");
crop("blazereed"     , [<ic2:dust:16>, <minecraft:blaze_rod>, <minecraft:blaze_powder>], 6 , "Fire Blaze Reed Sulfur"                      );
crop("corium"        , [<minecraft:leather>]                                           , 6 , "Cow Silk Vine"                               );
crop("cyprium"       , [<ic2:dust:19>]                                                 , 6 , "Copper Leaves Metal"                         , "§6Only matures if there is an §nCopper Ore§r§6 or §nCopper Block§r§6 below it");
crop("eatingplant"   , [<minecraft:cactus>]                                            , 6 , "Bad Food"                                    , "§6Light level of at least 10; Only matures if §nLava§r§6 is below it; Will attack the player if not wearing metal armor and drop §nRotten Flesh");
crop("egg_plant"     , [<minecraft:egg>,<minecraft:chicken>,<minecraft:feather>]       , 6 , "Chicken Egg Edible Feather Flower Addictive" );
crop("ferru"         , [<ic2:dust:21>]                                                 , 6 , "Gray Leaves Metal"                           , "§6Only matures if there is an §nIron Ore§r§6 or §nBlock of Iron§r§6 below it");
crop("milk_wart"     , [<ic2:crop_res:6>]                                              , 6 , "Edible Milk Cow"                             );
crop("plumbiscus"    , [<ic2:dust:23>]                                                 , 6 , "Lead Leaves Metal"                           , "§6Only matures if there is an §nLead Ore§r§6 or §nLead Block§r§6 below it");
crop("redwheat"      , [<minecraft:redstone>,<minecraft:wheat>]                        , 6 , "Red Redstone Wheat"                          , "§6Light level between 5 and 10 inclusive; Drops §nRedstone§r§6 only when powered by redstone");
crop("shining"       , [<ic2:dust:26>]                                                 , 6 , "Silver Leaves Metal"                         , "§6Only matures if there is an §nSilver Block§r§6 or §nSilver Ore§r§6 below it");
crop("slime_plant"   , [<minecraft:slime_ball>]                                        , 6 , "Slime Bouncy Sticky Bush"                    );
crop("spidernip"     , [<minecraft:string>,<minecraft:web>,<minecraft:spider_eye>]     , 7 , "Silk Vine Addictive"                         );
crop("coffee"        , [<ic2:crop_res>]                                                , 7 , "Leaves Ingredient Beans"                     , "§6Light level of at least 9");
crop("creeper_weed"  , [<minecraft:gunpowder>]                                         , 7 , "Creeper Vine Explosive Fire Sulfur Saltpeter Coal" );
crop("meat_rose"     , [<minecraft:dye:9>,<minecraft:chicken>,<minecraft:beef>,<minecraft:porkchop>,<minecraft:fish>] , 7 , "Edible Flower Cow Fish Chicken Pig");
crop("tearstalks"    , [<minecraft:ghast_tear>]                                        , 8 , "Healing Nether Ingredient Reed Ghast"        );
crop("withereed"     , [<ic2:dust:2>,<minecraft:coal>]                                 , 8 , "Fire Undead Reed Coal Rotten Wither"         );
crop("oil_berries"   , [<ic2:crop_res:7>]                                              , 9 , "Fire Dark Reed Rotten Coal Oil"              );
crop("ender_blossom" , [<ic2:dust:31>,<minecraft:ender_pearl>,<minecraft:ender_eye>]   , 10, "Ender Flower Shiny"                          );
crop("bobs_yer_uncle_ranks_berries", [<ic2:crop_res:8>, <minecraft:emerald>]           , 11, "Shiny Vine Emerald Berylium Crystal"         );
crop("diareed"       , [<ic2:dust:36>,<minecraft:diamond>]                             , 12, "Fire Shiny Reed Coal Diamond Crystal"        );

function morphDust(fruit as IItemStack, liquid as ILiquidStack, extra as IItemStack, aspects as thaumcraft.aspect.CTAspectStack[]) as void {
  # Remove Oredict entries from dust, because they would be used totally another way
  for ore in fruit.ores {
    ore.remove(fruit);
  }

  # Squeezing fruits
  scripts.process.squeeze([fruit], liquid, "only: CrushingTub ForestrySqueezer IndustrialSqueezer", extra);

  # Bigger fluid output + capsule
  val amount = (liquid.amount * 2) / 1000;
  val capsule = <forestry:refractory:1>.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}});
  mods.rats.recipes.addChefRatRecipe(fruit, amount > 1 ? capsule * amount : capsule);

  # Thaumcraft aspects
  fruit.setAspects(aspects);
}

morphDust(<ic2:dust:20>, <liquid:gold>              * 500 , <minecraft:glowstone_dust>     , [<aspect:metallum>*40, <aspect:desiderium>*50  ]); # Tiny Pile of Gold Dust
morphDust(<ic2:dust:16>, <liquid:ic2pahoehoe_lava>  *1000 , <enderio:item_material:22>     , [<aspect:metallum>*40, <aspect:desiderium>*50  ]); # Sulfur Dust
morphDust(<ic2:dust:19>, <liquid:copper>            * 500 , <thermalfoundation:material:99>, [<aspect:metallum>*120                         ]); # Tiny Pile of Copper Dust
morphDust(<ic2:dust:21>, <liquid:iron>              * 500 , <thermalfoundation:material:98>, [<aspect:metallum>*40, <aspect:instrumentum>*95]); # Tiny Pile of Iron Dust
morphDust(<ic2:dust:23>, <liquid:lead>              * 500 , <thermalfoundation:material:67>, [<aspect:metallum>*40, <aspect:fabrico>*90     ]); # Tiny Pile of Lead Dust
morphDust(<ic2:dust:26>, <liquid:silver>            * 500 , <thermalfoundation:material:97>, [<aspect:metallum>*40, <aspect:machina>*55     ]); # Tiny Pile of Silver Dust
morphDust(<ic2:dust:2> , <liquid:petrotheum>        * 500 , <actuallyadditions:item_misc:5>, [<aspect:metallum>*40, <aspect:exanimis>*30    ]); # Coal Dust
morphDust(<ic2:dust:31>, <liquid:spectre>           * 500 , <biomesoplenty:crystal_shard>  , [<aspect:metallum>*40, <aspect:praemunio>*60   ]); # Ender Pearl Dust
morphDust(<ic2:dust:36>, <liquid:cryotheum_nak_hot> * 500 , <enderio:item_material:14>     , [<aspect:metallum>*40, <aspect:spiritus>*50    ]); # Tiny Pile of Diamond Dust

// Remake usage of new dusts
utils.compact(<contenttweaker:dust_tiny_gold>  , <thermalfoundation:material:1>);
utils.compact(<contenttweaker:dust_tiny_silver>, <thermalfoundation:material:66>);

// Special case for dusts that recipes not stick with oredict
# Coal
mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:coal>);
mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:coal_ore>);
mods.mekanism.crusher.removeRecipe(<ic2:dust:2>);
mods.mekanism.enrichment.removeRecipe(<ic2:dust:2>);
mods.nuclearcraft.manufactory.removeRecipeWithInput([<ic2:dust:2>]);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([<thermalfoundation:material:160>]);
mods.nuclearcraft.melter.removeRecipeWithInput([<ic2:dust:2>]);
mods.mekanism.reaction.removeRecipe(<ore:dustSulfur>, <gas:hydrogen>, <ic2:dust:2>);
# Sulfur
furnace.setFuel(<ic2:dust:16>, 0);
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:sulfurdioxide>, <ic2:dust:16>);
mods.mekanism.enrichment.removeRecipe(<ic2:dust:16>);
mods.nuclearcraft.melter.removeRecipeWithInput([<ic2:dust:16>]);

# -----------------------------------------
# Other new recipes for crop res

<ic2:crop_res:5>.setAspects(<aspect:herba>*20); # Weed
<ic2:crop_res:4>.setAspects(<aspect:herba>*40, <aspect:victus>*30); # Hops
<ic2:terra_wart>.setAspects(<aspect:gelum>*35); # Terra Wart
<ic2:crop_res:6>.setAspects(<aspect:aqua>*20,<aspect:alkimia>*40); # Milk Wart
<ic2:crop_res>  .setAspects(<aspect:cognitio>*60); # Coffee Beans
<ic2:crop_res:7>.setAspects(<aspect:motus>*100); # Oil Berry
<ic2:crop_res:8>.setAspects(<aspect:visum>*20); # Bobs-Yer-Uncle-Ranks Berry
<ic2:crop_res:1>.setAspects(<aspect:cognitio>*50); # Coffee Powder

# [Green Fertilizer] from [Weed]
scripts.wrap.actuallyadditions.Compost.addRecipe(<farmingforblockheads:fertilizer:1>, <quark:quilted_wool:5>, <ic2:crop_res:5>, <biomesoplenty:log_4:4>);

# [Biogas Bucket] from [Hops]
scripts.process.squeeze([<ic2:crop_res:4>], <fluid:ic2biogas> * 200, "only: IndustrialSqueezer FluidExtractor");

# [Gelid Cryotheum Bucket] from [Terra Wart]
scripts.process.squeeze([<ic2:terra_wart>], <fluid:cryotheum> * 400, "only: CrushingTub IndustrialSqueezer");

# [Oil Bucket] from [Oil Berry]
scripts.process.squeeze([<ic2:crop_res:7>], <fluid:oil> * 500, "only: CrushingTub IndustrialSqueezer");

# [Molten Mirion Bucket] from [Bobs-Yer-Uncle-Ranks Berry]
scripts.process.squeeze([<ic2:crop_res:8>], <fluid:mirion> * 48, "only: CrushingTub IndustrialSqueezer");

# [HDPE Pellet] from [Milk Wart]
scripts.process.compress(<ic2:crop_res:6>, <mekanism:polyethene>);

# [Heart Dust]*2 from [Heart Dust][+2]
craft.reshapeless(<scalinghealth:heartdust> * 2, "A▲C", {
  "A": <ore:pestleAndMortar>,     # Pestle and Mortar
  "▲": <scalinghealth:heartdust>, # Heart Dust
  "C": <ic2:crop_res>,            # Coffee Beans
});

# [Emerald Gear] from [Wooden Gear][+1]
craft.remake(<thermalfoundation:material:27>, ["pretty",
  "  B  ",
  "B # B",
  "  B  "], {
  "B": <ic2:crop_res:8>, # Bobs-Yer-Uncle-Ranks Berry
  "#": <ore:gearWood>,   # Wooden Gear
});

# [Quartzburnt] from [Black Quartz Block][+1]
craft.remake(<extrautils2:decorativesolid:7>, ["pretty",
  "O O O",
  "O ⌃ O",
  "O O O"], {
  "O": <ic2:crop_res:7>,      # Oil Berry
  "⌃": <ore:blockQuartzBlack>, # Black Quartz
});