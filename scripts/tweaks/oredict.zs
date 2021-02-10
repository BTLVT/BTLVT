/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 24000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;

import scripts.util.oredict as OredictUtil;

var oredictMap as IIngredient[][IOreDictEntry] = {
    <ore:slimeball> : [<defiledlands:foul_slime>, <thermalfoundation:material:833>],
    <ore:stoneMarble> : [<pvj:marble>],
    <ore:workbench> : [<ore:craftingTableWood>, <randomthings:customworkbench:*>],
    <ore:plantFibre> : [<hooked:microcrafting>],
    <ore:string> : [<hooked:microcrafting:1>],
    <ore:dirt> : [<biomesoplenty:dirt:*>],
    <ore:plantCattail> : [<pvj:cattail:*>],
    <ore:ingotFusionMatrix> : [<tconevo:material>],
    <ore:ingotCoalescenceMatrix> : [<tconevo:material>],
    <ore:blockCoalescenceMatrix> : [<ore:blockFusionMatrix>],
    <ore:logWood> : [<treasure2:wither_log>, <sakura:ume_log>],
    <ore:plankWood> : [<treasure2:wither_planks>],
    <ore:blockBasalt> : [<pvj:basalt>],
    <ore:blockBasalt> : [<netherex:basalt>],
    <ore:blockBasalt> : [<ore:stoneBasalt>],
    <ore:stoneBasalt> : [<taiga:basalt_block>],
    <ore:foodChocolate> : [<actuallyadditions:item_food:9>, <foodexpansion:itemchocolatebar>, <ore:foodChocolateBar>],
    <ore:foodChocolateBar> : [<ore:foodChocolate>],
    <ore:foodCandyCane> : [<aether_legacy:candy_cane>],
    <ore:CandyCane> : [<ore:foodCandyCane>],
    <ore:ingotGaia> : [<ore:gaiaIngot>],
    <ore:blockTerrasteel> : [<botania:storage:1>],
    <ore:blockElvenElementium> : [<botania:storage:2>],
    <ore:blockOrichalcos> : [<extrabotany:blockorichalcos>],
    <ore:fallenStar> : [<nyx:fallen_star>],
    <ore:bedrock> : [<minecraft:bedrock>],
    <ore:toolTiC> : [
        <plustic:laser_gun>,
        <plustic:katana>,
        <tcomplement:chisel>,
        <tconstruct:pickaxe>,
        <tconstruct:shovel>,
        <tconstruct:hatchet>,
        <tconstruct:mattock>,
        <tconstruct:kama>,
        <tconstruct:hammer>,
        <tconstruct:excavator>,
        <tconstruct:lumberaxe>,
        <tconstruct:scythe>,
        <tconstruct:broadsword>,
        <tconstruct:longsword>,
        <tconstruct:rapier>,
        <tconstruct:frypan>,
        <tconstruct:battlesign>,
        <tconstruct:cleaver>,
        <tconstruct:shortbow>,
        <tconstruct:longbow>,
        <tconstruct:crossbow>,
        <tconstruct:shuriken>,
        <tconstruct:arrow>,
        <tconstruct:bolt>,
        <yoyos:yoyo>,
        <tconevo:tool_sceptre>
    ],
    <ore:armorTiC> : [
        <conarm:helmet>,
        <conarm:chestplate>,
        <conarm:leggings>,
        <conarm:boots>
    ],
    <ore:dungeonLootTier1> : [
        <additions:greedycraft-medkit_small>,
        <additions:greedycraft-bag_of_dyes>,
        <quark:rune:*>,
        <cyclicmagic:apple_emerald>,
        <additions:greedycraft-tower_chest_key>,
        <scalinghealth:crystalshard>,
        <additions:greedycraft-huaji>,
        <extrabotany:material>,
        <cyclicmagic:corrupted_chorus>,
        <additions:tcsponsors-sponsor_chest_fragment>,
        <forestry:broken_bronze_pickaxe>,
        <forestry:kit_pickaxe>,
        <cyclicmagic:sprout_seed>,
        <cyclicmagic:ender_pearl_reuse>,
        <cyclicmagic:ender_eye_orb>,
        <cyclicmagic:charm_wing>,
        <cyclicmagic:charm_antidote>,
        <cyclicmagic:charm_fire>,
        <cyclicmagic:charm_void>,
        <actuallyadditions:item_misc:20>,
        <ore:itemPoop>, 
        <ore:gemShadow>, 
        <ore:record>
    ],
    <ore:dungeonLootTier2> : [
        <randomthings:magichood>,
        <openblocks:technicolor_glasses>,
        <additions:greedycraft-delivery_order>,
        <enderio:item_dark_steel_sword>,
        <cyclicmagic:tool_prospector>,
        <cyclicmagic:glove_climb>,
        <enderio:item_conduit_probe>,
        <cyclicmagic:sack_ender>,
        <randomthings:biomecrystal>,
        <enderio:item_dark_steel_boots>,
        <additions:greedycraft-medkit_big>,
        <bountifulbaubles:phantomprism>,
        <additions:greedycraft-sunny_doll>,
        <extrabotany:bottledstar>,
        <bountifulbaubles:trinketmagiclenses>,
        <randomthings:summoningpendulum>,
        <enderio:item_basic_capacitor:4>,
        <enderio:item_basic_capacitor:3>,
        <bountifulbaubles:shieldcobalt>,
        <enderio:item_travel_staff>,
        <randomthings:lavacharm>,
        <cyclicmagic:evoker_fang>,
        <cyclicmagic:ender_lightning>,
        <cyclicmagic:tool_auto_torch>,
        <advanced-fishing:blazing_fishing_pole>,
        <bountifulbaubles:amuletcross>,
        <bountifulbaubles:flaregun>,
        <randomthings:slimecube>,
        <cyclicmagic:tool_warp_home>,
        <cyclicmagic:tool_push>,
        <bountifulbaubles:trinketluckyhorseshoe>,
        <extrabotany:bottledpixie>,
        <cyclicmagic:crafting_food>,
        <cyclicmagic:inventory_food>,
        <cyclicmagic:ender_tnt_6>,
        <forestry:miner_bag>,
        <botania:overgrowthseed>,
        <bountifulbaubles:brokenblackdragonscale>,
        <bountifulbaubles:trinketbezoar>,
        <bountifulbaubles:magicmirror>,
        <bountifulbaubles:amuletsinempty>,
        <bountifulbaubles:trinketobsidianskull>,
        <cqrepoured:great_sword_diamond>,
        <cqrepoured:great_sword_iron>,
        <cqrepoured:great_sword_bull>,
        <cqrepoured:great_sword_monking>,
        <cqrepoured:spear_diamond>,
        <cqrepoured:spear_iron>,
        <cqrepoured:staff_healing>,
        <cqrepoured:sword_moonlight>,
        <cqrepoured:dagger_iron>,
        <cqrepoured:dagger_diamond>,
        <cqrepoured:dagger_ninja>,
        <cqrepoured:dagger_monking>,
        <cqrepoured:sword_turtle>,
        <cqrepoured:sword_spider>,
        <cqrepoured:staff_poison>,
        <cqrepoured:staff_thunder>,
        <cqrepoured:staff_wind>,
        <cqrepoured:sword_sunshine>,
        <cqrepoured:battle_axe_bull>,
        <cqrepoured:sword_walker>,
        <cqrepoured:shield_walker_king>,
        <cqrepoured:staff_spider>,
        <cqrepoured:staff_gun>,
        <cqrepoured:revolver>,
        <cqrepoured:musket>,
        <cqrepoured:musket_dagger_iron>,
        <cqrepoured:musket_dagger_monking>,
        <cqrepoured:musket_dagger_diamond>,
        <cqrepoured:captain_revolver>,
        <cqrepoured:helmet_slime>,
        <cqrepoured:chestplate_slime>,
        <cqrepoured:leggings_slime>,
        <cqrepoured:boots_slime>,
        <cqrepoured:helmet_bull>,
        <cqrepoured:chestplate_bull>,
        <cqrepoured:leggings_bull>,
        <cqrepoured:boots_bull>,
        <cqrepoured:helmet_turtle>,
        <cqrepoured:chestplate_turtle>,
        <cqrepoured:leggings_turtle>,
        <cqrepoured:boots_turtle>,
        <cqrepoured:helmet_spider>,
        <cqrepoured:chestplate_spider>,
        <cqrepoured:leggings_spider>,
        <cqrepoured:boots_spider>,
        <cqrepoured:helmet_inquisition>,
        <cqrepoured:chestplate_inquisition>,
        <cqrepoured:leggings_inquisition>,
        <cqrepoured:boots_inquisition>,
        <cqrepoured:helmet_heavy_diamond>,
        <cqrepoured:chestplate_heavy_diamond>,
        <cqrepoured:leggings_heavy_diamond>,
        <cqrepoured:boots_heavy_diamond>,
        <cqrepoured:helmet_heavy_iron>,
        <cqrepoured:chestplate_heavy_iron>,
        <cqrepoured:leggings_heavy_iron>,
        <cqrepoured:boots_heavy_iron>,
        <cqrepoured:helmet_diamond_dyable>,
        <cqrepoured:chestplate_diamond_dyable>,
        <cqrepoured:leggings_diamond_dyable>,
        <cqrepoured:boots_diamond_dyable>,
        <cqrepoured:helmet_iron_dyable>,
        <cqrepoured:chestplate_iron_dyable>,
        <cqrepoured:leggings_iron_dyable>,
        <cqrepoured:boots_iron_dyable>,
        <cyclicmagic:ender_dungeon>,
        <cqrepoured:helmet_dragon>,
        <extrabotany:bottledflame>,
        <astralsorcery:itemconstellationpaper>,
        <additions:greedycraft-loli_lolipop>,
        <openblocks:trophy:*>,
        <charm:charged_emerald>,
        <charm:totem_of_shielding>,
        <ore:dungeonShield>,
        <ore:inventoryPet>
    ],
    <ore:dungeonLootTier3> : [
        <additions:greedycraft-goodie_bag>,
        <additions:greedycraft-true_eye_of_ender>,
        <additions:greedycraft-medkit_super>,
        <additions:greedycraft-experience_transporter>,
        <additions:greedycraft-skill_reset_scroll>,
        <additions:tcsponsors-sponsors_chest>,
        <cyclicmagic:heart_food>,
        <additions:greedycraft-one_punch>,
        <additions:greedycraft-experiment_note>,
        <mowziesmobs:wrought_helmet>,
        <mowziesmobs:wrought_axe>],
    <ore:dungeonShield> : [
        <cqrepoured:shield_bull>,
        <cqrepoured:shield_carl>,
        <cqrepoured:shield_dragonslayer>,
        <cqrepoured:shield_fire>,
        <cqrepoured:shield_goblin>,
        <cqrepoured:shield_monking>,
        <cqrepoured:shield_moon>,
        <cqrepoured:shield_mummy>,
        <cqrepoured:shield_pigman>,
        <cqrepoured:shield_pirate>,
        <cqrepoured:shield_pirate2>,
        <cqrepoured:shield_rainbow>,
        <cqrepoured:shield_reflective>,
        <cqrepoured:shield_rusted>,
        <cqrepoured:shield_skeleton_friends>,
        <cqrepoured:shield_specter>,
        <cqrepoured:shield_spider>,
        <cqrepoured:shield_sun>,
        <cqrepoured:shield_tomb>,
        <cqrepoured:shield_triton>,
        <cqrepoured:shield_turtle>,
        <cqrepoured:shield_walker>,
        <cqrepoured:shield_warped>,
        <cqrepoured:shield_zombie>
    ],
    <ore:gemCincinnasite> : [<betternether:cincinnasite>],
    <ore:gemTofu> : [<tofucraft:material:18>],
    <ore:gemTofuStrong> : [<tofucraft:material:25>],
    <ore:gemDiamondPink> : [<sakura:sakura_diamond>],
    <ore:gemDiamondSakura> : [<sakura:sakura_diamond>],
    <ore:dustCrystalHeart> : [<scalinghealth:heartdust>],
    <ore:shardCrystalHeart> : [<scalinghealth:crystalshard>],
    <ore:heartContainer> : [
        <scalinghealth:heartcontainer>,
        <cyclicmagic:heart_food>
    ],
    <ore:compressed1xDirt> : [<ore:compressedDirt1>],
    <ore:compressedDirt1> : [<ore:compressed1xDirt>],
    <ore:compressed2xDirt> : [<ore:compressedDirt2>],
    <ore:compressedDirt2> : [<ore:compressed2xDirt>],
    <ore:beanCocoa> : [<minecraft:dye:3>],
    <ore:quartzDark> : [<ore:gemQuartzBlack>],
    <ore:gemQuartzBlack> : [<ore:quartzDark>],
    <ore:blockShadowium> : [<extrabotany:blockshadowium>],
    <ore:ingotBrickScorched> : [<tcomplement:materials:1>],
    <ore:blockScorched> : [<tcomplement:scorched_block:*>],
    <ore:slabScorched> : [<tcomplement:scorched_slab:*>],
    <ore:stairScorched> : [
        <tcomplement:scorched_stairs_stone>,
        <tcomplement:scorched_stairs_cobble>,
        <tcomplement:scorched_stairs_paver>,
        <tcomplement:scorched_stairs_brick>,
        <tcomplement:scorched_stairs_brick_cracked>,
        <tcomplement:scorched_stairs_brick_fancy>,
        <tcomplement:scorched_stairs_brick_square>,
        <tcomplement:scorched_stairs_brick_triangle>,
        <tcomplement:scorched_stairs_brick_small>,
        <tcomplement:scorched_stairs_road>,
        <tcomplement:scorched_stairs_tile>,
        <tcomplement:scorched_stairs_creeper>
    ],
    <ore:pebble> : [<minecraft:flint>],
    <ore:ingotModularium> : [<modularmachinery:itemmodularium>],
    <ore:cobblestone> : [<ore:holystone>],
    <ore:ice> : [<minecraft:packed_ice>],
    <ore:ingotMeteor> : [<nyx:meteor_ingot>],
    <ore:blockMeteor> : [<nyx:meteor_block>],
    <ore:dustMeteor> : [<nyx:meteor_dust>],
    <ore:shardMeteor> : [<nyx:meteor_shard>],
    <ore:oreMeteor> : [<nyx:meteor_rock>],
    <ore:blockGlass> : [<betternether:quartz_stained_glass:*>, 
        <betternether:quartz_glass:*>, 
        <botany:stained:*>, 
        <extratrees:stainedglass:*>
    ],
    <ore:essenceChromium> : [<mysticalcreations:chromium_essence>],
    <ore:essenceTitanium> : [<mysticalcreations:titanium_essence>],
    <ore:essenceWitch> : [<mysticalcreations:witch_essence>],
    <ore:essenceCake> : [<mysticalcreations:cake_essence>],
    <ore:essenceStainlessSteel> : [<mysticalcreations:stainless_steel_essence>],
    <ore:dustWood> : [<ore:pulpWood>],
    <ore:pulpWood> : [<ore:dustWood>],
    <ore:itemRune> : [<quark:rune:*>],
    <ore:gemTerrestrial> : [<biomesoplenty:terrestrial_artifact>],
    <ore:blockRottenFlesh> : [<thaumcraft:flesh_block>, <charm:rotten_flesh_block>],
    <ore:rottenFlesh> : [<minecraft:rotten_flesh>],
    <ore:spiderEye> : [<minecraft:spider_eye>],
    <ore:mycelium> : [
        <quark:glowcelium>,
        <netherex:hyphae>,
        <biomesoplenty:grass:8>,
        <betternether:nether_mycelium>
    ],
    <ore:netherrack> : [<betternether:netherrack_moss>],
    <ore:shardCreative> : [<additions:greedycraft-creative_shard>],
    <ore:soulCreative> : [<additions:greedycraft-creative_soul>],
    <ore:blockDiamondPink> : [<sakura:sakura_diamond_block>],
    <ore:blockDiamondSakura> : [<sakura:sakura_diamond_block>],
    <ore:blockQuartzBlack> : [<ore:blockQuartzDark>],
    <ore:blockQuartzDark> : [<ore:blockQuartzBlack>],
    <ore:rodBlizz> : [<netherex:frost_rod>],
    <ore:dustBlizz> : [<netherex:frost_powder>],
    <ore:netherrack> : [<betternether:nether_mycelium>],
    <ore:ingotSpectre> : [<randomthings:ingredient:3>],
    <ore:stringSpectre> : [<randomthings:ingredient:12>],
    <ore:prismarine> : [<ore:blockPrismarine>],
    <ore:blockManaDiamond> : [<botania:storage:3>]
};

var removeMap as IIngredient[][IOreDictEntry] = {
    <ore:cobblestone> : [<quark:biome_cobblestone:1>]
};

for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}

for oredict in removeMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.removeOredictIngredients(oredict, ingredients);
}

for item in loadedMods["weeeflowers"].items {
    if(item.definition.id.replace("weeeflowers", "").contains("flower")) {
        OredictUtil.addOredictIngredient(<ore:listAllflower>, item);
    }
}

if(loadedMods.contains("inventorypets")) {
    for item in loadedMods["inventorypets"].items {
        if(item.definition.id.endsWith("pet")) {
            OredictUtil.addOredictIngredient(<ore:inventoryPet>, item);
        }
    }
}
