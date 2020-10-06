#priority 2200
#disable_search_tree
#loader contenttweaker 
#modloaded tconstruct
#modloaded plustic
#modloaded tconevo
#modloaded mysticalagriculture

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.Color;

val cheese = mods.contenttweaker.tconstruct.MaterialBuilder.create("cheese");
cheese.color = Color.fromHex("ffeb3b").getIntColor();
cheese.craftable = true;
cheese.castable = true;
cheese.representativeItem = <item:harvestcraft:cheeseitem>;
cheese.liquid = <liquid:milk>;
cheese.addItem(<ore:foodCheese>);
cheese.localizedName = "奶酪";
cheese.addHeadMaterialStats(200, 3.5, 3, 0);
cheese.addHandleMaterialStats(0.2, 70);
cheese.addExtraMaterialStats(-30);
cheese.addBowMaterialStats(1.2, 1, 0.2);
cheese.addMaterialTrait("squeaky", "head");
cheese.addMaterialTrait("tasty", "head");
cheese.addMaterialTrait("tasty", "handle");
cheese.addMaterialTrait("tasty", "extra");
cheese.addProjectileMaterialStats();
cheese.register();

val molten_fusion_matrix = mods.contenttweaker.VanillaFactory.createFluid("fusion_matrix", Color.fromHex("4a148c").getIntColor());
molten_fusion_matrix.material = <blockmaterial:lava>;
molten_fusion_matrix.viscosity = 2000;
molten_fusion_matrix.rarity = "EPIC";
molten_fusion_matrix.colorize = true;
molten_fusion_matrix.temperature = 2800;
molten_fusion_matrix.luminosity = 15;
molten_fusion_matrix.color = Color.fromHex("4a148c").getIntColor();
molten_fusion_matrix.stillLocation = "base:fluids/molten";
molten_fusion_matrix.flowingLocation = "base:fluids/molten_flowing";
molten_fusion_matrix.register();
game.setLocalization("fluid.fusion_matrix", "熔融聚合矩阵");

val molten_insanium = mods.contenttweaker.VanillaFactory.createFluid("insanium", Color.fromHex("aa00ff").getIntColor());
molten_insanium.material = <blockmaterial:lava>;
molten_insanium.viscosity = 2000;
molten_insanium.rarity = "EPIC";
molten_insanium.colorize = true;
molten_insanium.luminosity = 10;
molten_insanium.temperature = 1800;
molten_insanium.color = Color.fromHex("aa00ff").getIntColor();
molten_insanium.stillLocation = "base:fluids/molten";
molten_insanium.flowingLocation = "base:fluids/molten_flowing";
molten_insanium.register();
game.setLocalization("fluid.insanium", "熔融究极精华");

val insanium = mods.contenttweaker.tconstruct.MaterialBuilder.create("insanium");
insanium.color = Color.fromHex("aa00ff").getIntColor();
insanium.craftable = false;
insanium.castable = true;
insanium.representativeItem = <item:mysticalagradditions:insanium:2>;
insanium.liquid = <liquid:insanium>;
insanium.localizedName = "究极精华";
insanium.addHeadMaterialStats(18200, 29.6, 22.2, 6);
insanium.addHandleMaterialStats(1.5, 720);
insanium.addExtraMaterialStats(1200);
insanium.addBowMaterialStats(0.68, 2.5, 8.2);
insanium.addArrowShaftMaterialStats(2.25, 10);
insanium.addProjectileMaterialStats();
insanium.register();

val fusion_matrix = mods.contenttweaker.tconstruct.MaterialBuilder.create("fusion_matrix");
fusion_matrix.color = Color.fromHex("4a148c").getIntColor(); 
fusion_matrix.craftable = false;
fusion_matrix.castable = true;
fusion_matrix.representativeItem = <item:tconevo:material:0>;
fusion_matrix.liquid = <liquid:fusion_matrix>;
fusion_matrix.localizedName = "聚合矩阵";
fusion_matrix.addHeadMaterialStats(12000, 19.6, 18.9, 8);
fusion_matrix.addHandleMaterialStats(1.8, 625);
fusion_matrix.addExtraMaterialStats(820);
fusion_matrix.addMaterialTrait("dense", "head");
fusion_matrix.addMaterialTrait("dense", "handle");
fusion_matrix.addMaterialTrait("dense", "extra");
fusion_matrix.addBowMaterialStats(1.2, 1.2, 9.6);
fusion_matrix.addArrowShaftMaterialStats(1.75, 40);
fusion_matrix.addProjectileMaterialStats();
fusion_matrix.register();

val experience = mods.contenttweaker.tconstruct.MaterialBuilder.create("experience");
experience.color = Color.fromHex("76ff03").getIntColor();
experience.craftable = false;
experience.castable = true;
experience.representativeItem = <item:actuallyadditions:item_solidified_experience>;
experience.addItem(<item:additions:experience_ingot_image>);
experience.liquid = <liquid:experience>;
experience.localizedName = "知识精华";
experience.addHeadMaterialStats(400, 4.0, 4.2, 2);
experience.addHandleMaterialStats(1.2, 80);
experience.addExtraMaterialStats(60);
experience.addBowMaterialStats(0.6, 1.1, 1.0);
experience.addProjectileMaterialStats();
experience.register();

val infernium = mods.contenttweaker.tconstruct.MaterialBuilder.create("infernium");
infernium.color = Color.fromHex("ff4000").getIntColor(); 
infernium.craftable = false;
infernium.castable = true;
infernium.representativeItem = <item:additions:infernium_ingot>;
infernium.liquid = <liquid:infernium>;
infernium.localizedName = "永燃";
infernium.addHeadMaterialStats(16000, 24.6, 25.7, 9);
infernium.addHandleMaterialStats(2.2, 800);
infernium.addExtraMaterialStats(1024);
infernium.addMaterialTrait("flammable", "head");
infernium.addMaterialTrait("flammable", "handle");
infernium.addMaterialTrait("flammable", "extra");
infernium.addBowMaterialStats(1.1, 1.2, 12.4);
infernium.addArrowShaftMaterialStats(2.0, 30);
infernium.addProjectileMaterialStats();
infernium.register();

game.setLocalization("jaopca.entry.Infernium", "永燃");

val titanium = mods.contenttweaker.tconstruct.MaterialBuilder.create("titanium");
titanium.color = Color.fromHex("adb0b9").getIntColor(); 
titanium.craftable = false;
titanium.castable = true;
titanium.representativeItem = <item:additions:titanium_ingot>;
titanium.liquid = <liquid:titanium>;
titanium.localizedName = "钛金";
titanium.addHeadMaterialStats(120000, 32.6, 34.2, 10);
titanium.addHandleMaterialStats(2.8, 50000);
titanium.addExtraMaterialStats(40000);
titanium.addMaterialTrait("duritos", "head");
titanium.addMaterialTrait("duritos", "handle");
titanium.addMaterialTrait("duritos", "extra");
titanium.addBowMaterialStats(1.2, 1.3, 23.3);
titanium.addArrowShaftMaterialStats(2.4, 32);
titanium.addProjectileMaterialStats();
titanium.register();

game.setLocalization("jaopca.entry.Titanium", "钛金");
game.setLocalization("jaopca.entry.LiquifiedCoralium", "精炼珊瑚");

/* JAOPCA Somehow adds this
val molten_cryonium = mods.contenttweaker.VanillaFactory.createFluid("cryonium", Color.fromHex("40c3ff").getIntColor());
molten_cryonium.material = <blockmaterial:lava>;
molten_cryonium.viscosity = 2400;
molten_cryonium.rarity = "EPIC";
molten_cryonium.colorize = true;
molten_cryonium.temperature = 4;
molten_cryonium.luminosity = 10;
molten_cryonium.color = Color.fromHex("40c3ff").getIntColor();
molten_cryonium.register();
game.setLocalization("fluid.cryonium", "熔融极寒");
*/

val cryonium = mods.contenttweaker.tconstruct.MaterialBuilder.create("cryonium");
cryonium.color = Color.fromHex("40c3ff").getIntColor(); 
cryonium.craftable = false;
cryonium.castable = true;
cryonium.representativeItem = <item:additions:cryonium_ingot>;
cryonium.liquid = <liquid:cryonium>;
cryonium.localizedName = "极寒";
cryonium.addHeadMaterialStats(8000, 17.6, 16.8, 7);
cryonium.addHandleMaterialStats(1.6, 800);
cryonium.addExtraMaterialStats(800);
cryonium.addMaterialTrait("duritos", "head");
cryonium.addMaterialTrait("duritos", "handle");
cryonium.addMaterialTrait("duritos", "extra");
cryonium.addBowMaterialStats(1.2, 1.3, 8.9);
cryonium.addArrowShaftMaterialStats(1.5, 32);
cryonium.addProjectileMaterialStats();
cryonium.register();
game.setLocalization("jaopca.entry.Cryonium", "极寒");
game.setLocalization("jaopca.entry.Experience", "知识精华");

val alubrass = mods.contenttweaker.tconstruct.MaterialBuilder.create("alubrass");
alubrass.color = Color.fromHex("fbc02d").getIntColor(); 
alubrass.craftable = false;
alubrass.castable = true;
alubrass.representativeItem = <item:tconstruct:ingots:5>;
alubrass.liquid = <liquid:alubrass>;
alubrass.localizedName = "铝黄铜";
alubrass.addHeadMaterialStats(200, 13.5, 5.0, 1);
alubrass.addHandleMaterialStats(1.2, 30);
alubrass.addExtraMaterialStats(850);
alubrass.addMaterialTrait("duritos", "head");
alubrass.addMaterialTrait("duritos", "handle");
alubrass.addMaterialTrait("duritos", "extra");
alubrass.addBowMaterialStats(1.65, 1.3, 6.2);
alubrass.addProjectileMaterialStats();
alubrass.register();

val diamond = mods.contenttweaker.tconstruct.MaterialBuilder.create("diamond");
diamond.color = Color.fromHex("18ffff").getIntColor(); 
diamond.craftable = true;
diamond.castable = false;
diamond.representativeItem = <item:minecraft:diamond>;
diamond.addItem(<ore:gemDiamond>);
diamond.localizedName = "钻石";
diamond.addHeadMaterialStats(800, 14.5, 5.7, 3);
diamond.addHandleMaterialStats(1.3, 600);
diamond.addExtraMaterialStats(1250);
diamond.addMaterialTrait("duritos", "head");
diamond.addMaterialTrait("duritos", "handle");
diamond.addMaterialTrait("duritos", "extra");
diamond.addBowMaterialStats(1.65, 1.2, 7.0);
diamond.addProjectileMaterialStats();
diamond.register();

val gold = mods.contenttweaker.tconstruct.MaterialBuilder.create("gold");
gold.color = Color.fromHex("fdd835").getIntColor(); 
gold.craftable = false;
gold.castable = true;
gold.representativeItem = <item:minecraft:gold_ingot>;
gold.liquid = <liquid:gold>;
gold.localizedName = "金";
gold.addHeadMaterialStats(20, 20.5, 6.6, 2);
gold.addHandleMaterialStats(0.2, 30);
gold.addExtraMaterialStats(40);
gold.addMaterialTrait("duritos", "head");
gold.addMaterialTrait("duritos", "handle");
gold.addMaterialTrait("duritos", "extra");
gold.addBowMaterialStats(1.65, 1.3, 6.2);
gold.addProjectileMaterialStats();
gold.register();

val coal = mods.contenttweaker.tconstruct.MaterialBuilder.create("coal");
coal.color = Color.fromHex("212121").getIntColor(); 
coal.craftable = true;
coal.castable = false;
coal.representativeItem = <item:minecraft:coal>;
coal.addItem(<ore:coal>);
coal.localizedName = "煤";
coal.addHeadMaterialStats(10, 3.5, 1.2, 0);
coal.addHandleMaterialStats(0.1, 12);
coal.addExtraMaterialStats(15);
coal.addBowMaterialStats(1.8, 1.0, 0.1);
coal.addMaterialTrait("duritos", "head");
coal.addMaterialTrait("duritos", "handle");
coal.addMaterialTrait("duritos", "extra");
coal.addProjectileMaterialStats();
coal.register();

val molten_ethaxium = mods.contenttweaker.VanillaFactory.createFluid("ethaxium", Color.fromHex("5f7570").getIntColor());
molten_ethaxium.material = <blockmaterial:lava>;
molten_ethaxium.viscosity = 2400;
molten_ethaxium.rarity = "EPIC";
molten_ethaxium.colorize = true;
molten_ethaxium.temperature = 2000;
molten_ethaxium.luminosity = 10;
molten_ethaxium.color = Color.fromHex("5f7570").getIntColor();
molten_ethaxium.stillLocation = "base:fluids/molten";
molten_ethaxium.flowingLocation = "base:fluids/molten_flowing";
molten_ethaxium.register();
game.setLocalization("fluid.ethaxium", "熔融伊桑斯");

val ethaxium = mods.contenttweaker.tconstruct.MaterialBuilder.create("ethaxium");
ethaxium.color = Color.fromHex("5f7570").getIntColor(); 
ethaxium.craftable = false;
ethaxium.castable = true;
ethaxium.representativeItem = <item:abyssalcraft:ethaxiumingot>;
ethaxium.liquid = <liquid:ethaxium>;
ethaxium.localizedName = "伊桑斯";
ethaxium.addHeadMaterialStats(2800, 22.5, 14.2, 6);
ethaxium.addHandleMaterialStats(1.2, 300);
ethaxium.addExtraMaterialStats(600);
ethaxium.addMaterialTrait("duritos", "head");
ethaxium.addMaterialTrait("duritos", "handle");
ethaxium.addMaterialTrait("duritos", "extra");
ethaxium.addBowMaterialStats(1.35, 1.3, 12.2);
ethaxium.addProjectileMaterialStats();
ethaxium.register();

val scarlite = mods.contenttweaker.tconstruct.MaterialBuilder.create("scarlite");
scarlite.color = Color.fromHex("f44336").getIntColor(); 
scarlite.craftable = true;
scarlite.castable = false;
scarlite.representativeItem = <item:defiledlands:scarlite>;
scarlite.addItem(<ore:gemScarlite>);
scarlite.localizedName = "绯红宝石";
scarlite.addHeadMaterialStats(200, 3.5, 9.6, 3);
scarlite.addHandleMaterialStats(1.2, 120);
scarlite.addExtraMaterialStats(150);
scarlite.addBowMaterialStats(1.5, 1.0, 2.5);
scarlite.addMaterialTrait("duritos", "head");
scarlite.addMaterialTrait("duritos", "handle");
scarlite.addMaterialTrait("duritos", "extra");
scarlite.addProjectileMaterialStats();
scarlite.register();

val hephaestite = mods.contenttweaker.tconstruct.MaterialBuilder.create("hephaestite");
hephaestite.color = Color.fromHex("ff3d00").getIntColor(); 
hephaestite.craftable = true;
hephaestite.castable = false;
hephaestite.representativeItem = <item:defiledlands:hephaestite>;
hephaestite.addItem(<ore:gemHephaestite>);
hephaestite.localizedName = "赫菲斯辛";
hephaestite.addHeadMaterialStats(100, 3.5, 2.2, 1);
hephaestite.addHandleMaterialStats(0.8, 80);
hephaestite.addExtraMaterialStats(90);
hephaestite.addBowMaterialStats(1.3, 1.0, 1.5);
hephaestite.addMaterialTrait("duritos", "head");
hephaestite.addMaterialTrait("duritos", "handle");
hephaestite.addMaterialTrait("duritos", "extra");
hephaestite.addProjectileMaterialStats();
hephaestite.register();

game.setLocalization("jaopca.entry.Umbrium", "影素");
game.setLocalization("jaopca.entry.Hephaestite", "赫菲斯辛");
game.setLocalization("jaopca.entry.Scarlite", "绯红宝石");

val molten_mithrillium = mods.contenttweaker.VanillaFactory.createFluid("mithrillium", Color.fromHex("2979ff").getIntColor());
molten_mithrillium.material = <blockmaterial:lava>;
molten_mithrillium.viscosity = 2400;
molten_mithrillium.rarity = "EPIC";
molten_mithrillium.colorize = true;
molten_mithrillium.temperature = 900;
molten_mithrillium.luminosity = 10;
molten_mithrillium.color = Color.fromHex("2979ff").getIntColor();
molten_mithrillium.stillLocation = "base:fluids/molten";
molten_mithrillium.flowingLocation = "base:fluids/molten_flowing";
molten_mithrillium.register();
game.setLocalization("fluid.mithrillium", "熔融秘银");

val mithrillium = mods.contenttweaker.tconstruct.MaterialBuilder.create("mithrillium");
mithrillium.color = Color.fromHex("2979ff").getIntColor(); 
mithrillium.craftable = false;
mithrillium.castable = true;
mithrillium.representativeItem = <item:thaumadditions:mithrillium_ingot>;
mithrillium.liquid = <liquid:mithrillium>;
mithrillium.localizedName = "秘银";
mithrillium.addHeadMaterialStats(9800, 16.5, 20.6, 6);
mithrillium.addHandleMaterialStats(1.5, 400);
mithrillium.addExtraMaterialStats(500);
mithrillium.addMaterialTrait("duritos", "head");
mithrillium.addMaterialTrait("duritos", "handle");
mithrillium.addMaterialTrait("duritos", "extra");
mithrillium.addBowMaterialStats(0.64, 1.0, 10);
mithrillium.addProjectileMaterialStats();
mithrillium.register();

val molten_adaminite = mods.contenttweaker.VanillaFactory.createFluid("adaminite", Color.fromHex("ff1744").getIntColor());
molten_adaminite.material = <blockmaterial:lava>;
molten_adaminite.viscosity = 2400;
molten_adaminite.rarity = "EPIC";
molten_adaminite.colorize = true;
molten_adaminite.temperature = 1000;
molten_adaminite.luminosity = 10;
molten_adaminite.color = Color.fromHex("ff1744").getIntColor();
molten_adaminite.stillLocation = "base:fluids/molten";
molten_adaminite.flowingLocation = "base:fluids/molten_flowing";
molten_adaminite.register();
game.setLocalization("fluid.adaminite", "熔融铿金");

val adaminite = mods.contenttweaker.tconstruct.MaterialBuilder.create("adaminite");
adaminite.color = Color.fromHex("ff1744").getIntColor(); 
adaminite.craftable = false;
adaminite.castable = true;
adaminite.representativeItem = <item:thaumadditions:adaminite_ingot>;
adaminite.liquid = <liquid:adaminite>;
adaminite.localizedName = "铿金";
adaminite.addHeadMaterialStats(12200, 18.5, 25.2, 7);
adaminite.addHandleMaterialStats(1.6, 800);
adaminite.addExtraMaterialStats(800);
adaminite.addMaterialTrait("duritos", "head");
adaminite.addMaterialTrait("duritos", "handle");
adaminite.addMaterialTrait("duritos", "extra");
adaminite.addBowMaterialStats(0.58, 1.2, 12);
adaminite.addProjectileMaterialStats();
adaminite.register();

val molten_mithminite = mods.contenttweaker.VanillaFactory.createFluid("mithminite", Color.fromHex("ff4081").getIntColor());
molten_mithminite.material = <blockmaterial:lava>;
molten_mithminite.viscosity = 2400;
molten_mithminite.rarity = "EPIC";
molten_mithminite.colorize = true;
molten_mithminite.temperature = 1200;
molten_mithminite.luminosity = 10;
molten_mithminite.color = Color.fromHex("ff4081").getIntColor();
molten_mithminite.stillLocation = "base:fluids/molten";
molten_mithminite.flowingLocation = "base:fluids/molten_flowing";
molten_mithminite.register();
game.setLocalization("fluid.mithminite", "熔融秘金");

val mithminite = mods.contenttweaker.tconstruct.MaterialBuilder.create("mithminite");
mithminite.color = Color.fromHex("ff4081").getIntColor(); 
mithminite.craftable = false;
mithminite.castable = true;
mithminite.representativeItem = <item:thaumadditions:mithminite_ingot>;
mithminite.liquid = <liquid:mithminite>;
mithminite.localizedName = "秘金";
mithminite.addHeadMaterialStats(14400, 22.5, 30.4, 8);
mithminite.addHandleMaterialStats(2.4, 3000);
mithminite.addExtraMaterialStats(4000);
mithminite.addMaterialTrait("duritos", "head");
mithminite.addMaterialTrait("duritos", "handle");
mithminite.addMaterialTrait("duritos", "extra");
mithminite.addBowMaterialStats(0.48, 1.4, 18);
mithminite.addProjectileMaterialStats();
mithminite.register();

val molten_ravaging = mods.contenttweaker.VanillaFactory.createFluid("ravaging", Color.fromHex("ffc1e3").getIntColor());
molten_ravaging.material = <blockmaterial:lava>;
molten_ravaging.viscosity = 2400;
molten_ravaging.rarity = "EPIC";
molten_ravaging.colorize = true;
molten_ravaging.temperature = 1600;
molten_ravaging.luminosity = 10;
molten_ravaging.color = Color.fromHex("ffc1e3").getIntColor();
molten_ravaging.stillLocation = "base:fluids/molten";
molten_ravaging.flowingLocation = "base:fluids/molten_flowing";
molten_ravaging.register();
game.setLocalization("fluid.ravaging", "熔融毁灭");

val ravaging = mods.contenttweaker.tconstruct.MaterialBuilder.create("ravaging");
ravaging.color = Color.fromHex("ffc1e3").getIntColor(); 
ravaging.craftable = false;
ravaging.castable = true;
ravaging.representativeItem = <item:defiledlands:ravaging_ingot>;
ravaging.liquid = <liquid:ravaging>;
ravaging.localizedName = "毁灭";
ravaging.addHeadMaterialStats(400, 80.5, 10.2, 5);
ravaging.addHandleMaterialStats(1.5, 320);
ravaging.addExtraMaterialStats(400);
ravaging.addMaterialTrait("duritos", "head");
ravaging.addMaterialTrait("duritos", "handle");
ravaging.addMaterialTrait("duritos", "extra");
ravaging.addBowMaterialStats(0.15, 1.2, 1);
ravaging.addProjectileMaterialStats();
ravaging.register();

val molten_gaia = mods.contenttweaker.VanillaFactory.createFluid("gaia", Color.fromHex("ff80ab").getIntColor());
molten_gaia.material = <blockmaterial:lava>;
molten_gaia.viscosity = 2400;
molten_gaia.rarity = "EPIC";
molten_gaia.colorize = true;
molten_gaia.temperature = 1400;
molten_gaia.luminosity = 10;
molten_gaia.color = Color.fromHex("ff80ab").getIntColor();
molten_gaia.stillLocation = "base:fluids/molten";
molten_gaia.flowingLocation = "base:fluids/molten_flowing";
molten_gaia.register();
game.setLocalization("fluid.gaia", "熔融盖亚魂锭");

val gaia = mods.contenttweaker.tconstruct.MaterialBuilder.create("gaia");
gaia.color = Color.fromHex("ff80ab").getIntColor(); 
gaia.craftable = false;
gaia.castable = true;
gaia.representativeItem = <item:botania:manaresource:14>;
gaia.liquid = <liquid:gaia>;
gaia.localizedName = "盖亚魂";
gaia.addHeadMaterialStats(1600, 8.5, 12.2, 5);
gaia.addHandleMaterialStats(1.2, 360);
gaia.addExtraMaterialStats(450);
gaia.addMaterialTrait("duritos", "head");
gaia.addMaterialTrait("duritos", "handle");
gaia.addMaterialTrait("duritos", "extra");
gaia.addBowMaterialStats(1.2, 1.2, 10);
gaia.addProjectileMaterialStats();
gaia.register();

val cytosinite = mods.contenttweaker.tconstruct.MaterialBuilder.create("cytosinite");
cytosinite.color = Color.fromHex("c8ff00").getIntColor(); 
cytosinite.craftable = false;
cytosinite.castable = true;
cytosinite.representativeItem = <item:additions:cytosinite_ingot>;
cytosinite.liquid = <liquid:cytosinite>;
cytosinite.localizedName = "胞嘧";
cytosinite.addHeadMaterialStats(6000, 14.6, 14.2, 7);
cytosinite.addHandleMaterialStats(1.3, 600);
cytosinite.addExtraMaterialStats(500);
cytosinite.addMaterialTrait("duritos", "head");
cytosinite.addMaterialTrait("duritos", "handle");
cytosinite.addMaterialTrait("duritos", "extra");
cytosinite.addBowMaterialStats(0.8, 1.1, 7.8);
cytosinite.addProjectileMaterialStats();
cytosinite.register();
game.setLocalization("jaopca.entry.Cytosinite", "胞嘧");

val molten_terra_alloy = mods.contenttweaker.VanillaFactory.createFluid("terra_alloy", Color.fromHex("70cf7b").getIntColor());
molten_terra_alloy.material = <blockmaterial:lava>;
molten_terra_alloy.viscosity = 2400;
molten_terra_alloy.rarity = "EPIC";
molten_terra_alloy.colorize = true;
molten_terra_alloy.temperature = 2500;
molten_terra_alloy.luminosity = 12;
molten_terra_alloy.color = Color.fromHex("70cf7b").getIntColor();
molten_terra_alloy.stillLocation = "base:fluids/molten";
molten_terra_alloy.flowingLocation = "base:fluids/molten_flowing";
molten_terra_alloy.register();
game.setLocalization("fluid.terra_alloy", "熔融大地合金");

val terra_alloy = mods.contenttweaker.tconstruct.MaterialBuilder.create("terra_alloy");
terra_alloy.color = Color.fromHex("70cf7b").getIntColor(); 
terra_alloy.craftable = false;
terra_alloy.castable = true;
terra_alloy.representativeItem = <item:additions:terra_alloy_ingot>;
terra_alloy.liquid = <liquid:terra_alloy>;
terra_alloy.localizedName = "大地合金";
terra_alloy.addHeadMaterialStats(262144, 33.6, 38.6, 9);
terra_alloy.addHandleMaterialStats(8, 40000);
terra_alloy.addExtraMaterialStats(80000);
terra_alloy.addMaterialTrait("duritos", "head");
terra_alloy.addMaterialTrait("duritos", "handle");
terra_alloy.addMaterialTrait("duritos", "extra");
terra_alloy.addBowMaterialStats(8, 3, 50.0);
terra_alloy.addProjectileMaterialStats();
terra_alloy.register();