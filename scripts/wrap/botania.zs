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
#modloaded botania
// Uses of this mod: 12


//####################################################
// Uses of this class: 12
zenClass Class_PureDaisy { zenConstructor() {}

	// Uses of this method: 12
	function addRecipe(blockInput as IIngredient, blockOutput as IItemStack) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.botania.PureDaisy.addRecipe'~
			serialize.args([serialize.IIngredient(blockInput), serialize.IItemStack(blockOutput)]));
		mods.botania.PureDaisy.addRecipe(blockInput, blockOutput);
	}

	function addRecipe(blockInput as IIngredient, blockOutput as IItemStack, time as int) as void {
		if(utils.DEBUG) print('Recipe wrapped: mods.botania.PureDaisy.addRecipe'~
			serialize.args([serialize.IIngredient(blockInput), serialize.IItemStack(blockOutput), time]));
		mods.botania.PureDaisy.addRecipe(blockInput, blockOutput, time);
	}

}
static PureDaisy as Class_PureDaisy = Class_PureDaisy();
