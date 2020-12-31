/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 90

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.world.IFacing;
import crafttweaker.command.ICommandSender;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

static damageScalingBlacklist as string[] = [
    "abyssalcraft:jzahar",
    "draconicevolution:chaosguardian",
    "abyssalcraft:shadowboss",
    "aether_legacy:sun_spirit",
    "extrabotany:gaiaiii",
    "extrabotany:voidherrscher",
    "botania:doppleganger"
];

static skeletonEntities as string[] = [
    "minecraft:skeleton",
    "minecraft:wither_skeleton",
    "primitivemobs:skeleton_warrior"
];

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase;
    if(isNull(entity) || !entity instanceof IPlayer) {
        return;
    }

    var player as IPlayer = entity;

    // Spider traps player with slowness or web
    var spiderId = <entity:spiderstpo:better_spider>.id;
    var caveSpiderId = <entity:spiderstpo:better_cave_spider>.id;
    if(!isNull(event.damageSource.getTrueSource()) && event.damageSource.getTrueSource() instanceof IEntityLivingBase) {
        if(event.damageSource.getTrueSource().definition.id == spiderId || event.damageSource.getTrueSource().definition.id == caveSpiderId) {
            if(!entity.isPotionActive(<potion:minecraft:slowness>)) {
                entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 0, false, false));
            } else {
                if(Math.random() < 0.66) {
                    var slownessLevel = entity.getActivePotionEffect(<potion:minecraft:slowness>).amplifier;
                    if(slownessLevel < 3) {
                        var increment = 1;
                        if(Math.random() < 0.33) {
                            increment = 2;
                        }
                        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, slownessLevel + increment, false, false));
                    } else {
                        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 4, false, false));
                        if(!isNull(entity.world.getBlock(entity.position)) && entity.world.getBlock(entity.position).definition.id == "minecraft:air") {
                            var blockState as IBlockState = IBlockState.getBlockState(<minecraft:web>.definition.id, [] as string[]);
                            entity.world.setBlockState(blockState, entity.position as IBlockPos);
                        }
                    }
                }
            }
        }
    }

    var dmg as float = event.amount;

    // Scales explosion damage
    if(event.damageSource.isExplosion()) {
        if(player.hasGameStage("nether")) {
            dmg *= 2.5f;
        }
        
        if(player.hasGameStage("hardmode")) {
            dmg *= 3.0f;
        }
    }

    // Scales projectile damage
    if(!isNull(event.damageSource.getTrueSource()) && event.damageSource.getTrueSource() instanceof IEntityLivingBase && event.damageSource.isProjectile()) {
        if(!event.damageSource.getTrueSource().isBoss) {
            if(player.hasGameStage("nether")) {
                dmg *= 1.5f;
                if(skeletonEntities has event.damageSource.getTrueSource().definition.id) {
                    dmg *= 2.0f;
                }
            }
        
            if(player.hasGameStage("hardmode")) {
                dmg *= 1.5f;
                if(skeletonEntities has event.damageSource.getTrueSource().definition.id) {
                    dmg *= 1.5f;
                }
            }
        }
    }

    // More boss damage
    if(!isNull(event.damageSource.getTrueSource()) && event.damageSource.getTrueSource() instanceof IEntityLivingBase) {
        if(event.damageSource.getTrueSource().isBoss) {
            if(!(damageScalingBlacklist has event.damageSource.getTrueSource().definition.id)) {
                dmg *= 1.5f;       
            }
        }
    }

    event.amount = dmg;
});
