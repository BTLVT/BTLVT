#disable_search_tree
#priority 1000
mods.tconstruct.Melting.addRecipe(<liquid:blood> * 200, <ore:listAllmeatraw>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 100, <ore:dustBlaze>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum> * 100, <ore:dustBlizz>, 50);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:zombie_pigman>, <liquid:gold>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:cow>, <liquid:milk>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:villager_golem>, <liquid:iron>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:snowman>, <liquid:water>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:enderman>, <liquid:ender>);
mods.tconstruct.Alloy.addRecipe(<liquid:end_steel> * 2, [<liquid:obsidian> * 2, <liquid:dark_steel> * 2, <liquid:ender> * 1]);
mods.tconstruct.Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 20, false, 200);
mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 250, <ore:dustPyrotheum>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum> * 250, <ore:dustCryotheum>, 50);
mods.tconstruct.Melting.addRecipe(<liquid:aerotheum> * 250, <ore:dustAerotheum>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:petrotheum> * 250, <ore:dustPetrotheum>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:aerotheum> * 100, <ore:dustBlitz>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:petrotheum> * 100, <ore:dustBasalz>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:lava> * 200, <ore:netherrack>, 800);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 160, <actuallyadditions:item_solidified_experience>, 300);
mods.tconstruct.Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 200, false);
mods.tconstruct.Alloy.addRecipe(<liquid:emerald> * 2, [<liquid:experience> * 3, <liquid:redstone> * 2, <liquid:glowstone> * 2]);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-experience_block>, null, <liquid:experience>, 1296, false, 200);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 1296, <ore:blockExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 144, <ore:ingotExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 16, <ore:nuggetExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 11664, <ore:blockCompressedExperience>, 300);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-experience_nugget>, <tconstruct:cast_custom:1>, <liquid:experience>, 16, false, 20);
mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-experience_ingot>, <tconstruct:cast_custom>, <liquid:experience>, 144, false, 80);

mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-compressed_experience_block>, <ore:blockExperience>, <liquid:experience>, 10368, true, 300);

mods.tconstruct.Alloy.addRecipe(<liquid:fierymetal> * 2, [<liquid:iron> * 2, <liquid:pyrotheum> * 1, <liquid:lava> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:experience> * 16, [<liquid:blood> * 8, <liquid:emerald> * 1, <liquid:gold> * 1]);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-pearl_of_knowledge>, <minecraft:emerald>, <liquid:experience>, 944784, true, 600);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 944784, <additions:greedycraft-pearl_of_knowledge>, 1200);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 288, <additions:greedycraft-experience_ore>, 100);

mods.tconstruct.Casting.addTableRecipe(<aether_legacy:golden_feather>, <minecraft:feather>, <liquid:gold>, 1152, true, 100);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:bucket>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-cryonic_artifact>, <minecraft:emerald>, <liquid:cryotheum>, 10000, true, 200);

mods.tconstruct.Casting.addTableRecipe(<tconevo:material>, <tconstruct:cast_custom>, <liquid:fusion_matrix>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-fusion_matrix_block>, null, <liquid:fusion_matrix>, 1296, false, 300);
mods.tconstruct.Melting.addRecipe(<liquid:fusion_matrix> * 144, <tconevo:material>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:fusion_matrix> * 1296, <ore:blockFusionMatrix>, 1300);
mods.tconstruct.Alloy.addRecipe(<liquid:fusion_matrix> * 1, [<liquid:manyullyn> * 2, <liquid:adamant_fluid> * 1, <liquid:enderium> * 2]);
mods.tconstruct.Alloy.addRecipe(<liquid:fluxed_electrum> * 288, [<liquid:gold> * 144, <liquid:silver> * 144, <liquid:redstone> * 1000]);
mods.tconstruct.Alloy.addRecipe(<liquid:adamant_fluid> * 3, [<liquid:nihilite_fluid> * 1, <liquid:iox_fluid> * 3]);

mods.tconstruct.Melting.addRecipe(<liquid:ethaxium> * 144, <ore:ingotEthaxium>, 1300);
//mods.tconstruct.Melting.addRecipe(<liquid:ethaxium> * 1296, <ore:blockEthaxium>, 1300);

//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 288, <additions:greedycraft-cryonium_ore>, 200);
//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 144, <additions:cryonium_ingot>, 200);
//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 1296, <additions:greedycraft-cryonium_block>, 900);
//mods.tconstruct.Casting.addTableRecipe(<additions:cryonium_ingot>, <tconstruct:cast_custom>, <liquid:cryonium>, 144, false, 20);
//mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-cryonium_block>, null, <liquid:cryonium>, 1296, false, 100);