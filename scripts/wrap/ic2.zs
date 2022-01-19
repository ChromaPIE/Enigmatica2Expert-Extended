/*
	This File generated automatically with wrapper.js
	Its wrap functions to print additional information
		into crafttweaker.log
*/
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mod.mekanism.gas.IGasStack;
import thaumcraft.aspect.CTAspectStack;

#priority 2900
#modloaded ic2
// Uses of this mod: 8


//####################################################
// Uses of this class: 1
zenClass Class_BlockCutter { zenConstructor() {}

	// Uses of this method: 1
	function addRecipe(output as IItemStack, input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.BlockCutter.addRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input)]));
		mods.ic2.BlockCutter.addRecipe(output, input);
	}

	function addRecipe(output as IItemStack, input as IIngredient, hardness as int) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.BlockCutter.addRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input), hardness]));
		mods.ic2.BlockCutter.addRecipe(output, input, hardness);
	}

}
static BlockCutter as Class_BlockCutter = Class_BlockCutter();

//####################################################
// Uses of this class: 1
zenClass Class_Canner { zenConstructor() {}

	// Uses of this method: 1
	function addEnrichRecipe(output as ILiquidStack, input as ILiquidStack, additive as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.Canner.addEnrichRecipe'~
			serialize.args([serialize.ILiquidStack(output), serialize.ILiquidStack(input), serialize.IIngredient(additive)]));
		mods.ic2.Canner.addEnrichRecipe(output, input, additive);
	}

}
static Canner as Class_Canner = Class_Canner();

//####################################################
// Uses of this class: 1
zenClass Class_Compressor { zenConstructor() {}

	// Uses of this method: 1
	function addRecipe(output as IItemStack, input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.Compressor.addRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input)]));
		mods.ic2.Compressor.addRecipe(output, input);
	}

}
static Compressor as Class_Compressor = Class_Compressor();

//####################################################
// Uses of this class: 1
zenClass Class_Extractor { zenConstructor() {}

	// Uses of this method: 1
	function addRecipe(output as IItemStack, input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.Extractor.addRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input)]));
		mods.ic2.Extractor.addRecipe(output, input);
	}

}
static Extractor as Class_Extractor = Class_Extractor();

//####################################################
// Uses of this class: 1
zenClass Class_Macerator { zenConstructor() {}

	// Uses of this method: 1
	function addRecipe(output as IItemStack, input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.Macerator.addRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input)]));
		mods.ic2.Macerator.addRecipe(output, input);
	}

}
static Macerator as Class_Macerator = Class_Macerator();

//####################################################
// Uses of this class: 1
zenClass Class_MetalFormer { zenConstructor() {}

	// Uses of this method: 1
	function addRollingRecipe(output as IItemStack, input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.MetalFormer.addRollingRecipe'~
			serialize.args([serialize.IItemStack(output), serialize.IIngredient(input)]));
		mods.ic2.MetalFormer.addRollingRecipe(output, input);
	}

}
static MetalFormer as Class_MetalFormer = Class_MetalFormer();

//####################################################
// Uses of this class: 2
zenClass Class_ThermalCentrifuge { zenConstructor() {}

	// Uses of this method: 2
	function addRecipe(outputs as IItemStack[], input as IIngredient) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.ThermalCentrifuge.addRecipe'~
			serialize.args([serialize.IItemStack__(outputs), serialize.IIngredient(input)]));
		mods.ic2.ThermalCentrifuge.addRecipe(outputs, input);
	}

	function addRecipe(outputs as IItemStack[], input as IIngredient, minHeat as int) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.ic2.ThermalCentrifuge.addRecipe'~
			serialize.args([serialize.IItemStack__(outputs), serialize.IIngredient(input), minHeat]));
		mods.ic2.ThermalCentrifuge.addRecipe(outputs, input, minHeat);
	}

}
static ThermalCentrifuge as Class_ThermalCentrifuge = Class_ThermalCentrifuge();
