# save_trident
#say save trident
#

# stop momentum   reset life    -if auto recall is on it basically makes tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge or flying around...
data merge entity @s {Motion:[0.0,0.0,0.0],life:1s}
# summon trident to owner
execute at @a if score @s trident_id = @p[sort=nearest] trident_id run tp @s ~ ~ ~
# reset cooldown, bug fix/option to turn off constant resummoning
execute if score #instant_recall trident.config matches 1.. run scoreboard players operation @s trident_lock = #trident_lock trident.config


##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# stop momentum
##### data merge entity @s {Motion:[0.0,0.0,0.0]}
# reset life    -if auto recall is on it basically makes tridents that are never picked up immortal in time, although the chances are pretty low unless someone is afk on a cliffs edge or flying around...
##### data merge entity @s {life:1s}


#tp @e[limit=1,distance=..0,type=trident,scores={trident_id=1..},tag=rtp] @s

#data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_trident trident.config matches 1.. as @e[type=minecraft:trident,scores={trident_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
#execute if score #immortal_trident trident.config matches 1.. as @e[type=minecraft:trident,predicate=trident:trident] run data merge entity @s {life:1s,Invulnerable:1b}


# this has no effect on collection after dmg taken
#execute unless entity @s[tag=trident_saved] run data modify entity @s DealtDamage set value 1b
#tag @s add trident_saved