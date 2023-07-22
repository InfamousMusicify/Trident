# trident_ih:fr/lockon
#say lockon
# set player lockon score to 1 minute cooldown
scoreboard players operation @s trident_lock = #trident_lock trident.config
# tracker for non trident tridents  -old bug fix to activate trident score
scoreboard players add @e[type=trident,sort=nearest] trident_id 0
# Set thrown trident score to player ID.  # Called by tick (at player who throws trident)
#og# execute store result score @e[sort=nearest,scores={trident_id=0},type=trident,limit=1,nbt={Trident_ih: {id: "minecraft:trident", Count: 1b, tag: {Tags: ["trident"]}}}] trident_id run scoreboard players get @s trident_id
execute store result score @e[type=minecraft:trident,limit=1,scores={trident_id=0}] trident_id run scoreboard players get @s trident_id
# tag trident for order of teleport -pre predicate redundancy -also easier to type than the predicate.
execute at @e[sort=nearest,type=trident,scores={trident_id=1..}] run tag @e[type=trident,limit=1,distance=..0] add trident_tp
# set cooldown on tridents 
scoreboard players add @e[type=trident,sort=nearest] trident_lock 0
execute as @e[sort=nearest,type=trident,tag=trident_tp,scores={trident_id=1..,trident_lock=0}] run scoreboard players operation @s trident_lock = #trident_lock trident.config
# Reset RajinThrow Score
scoreboard players set @s trident_throw 0
##### ##### ##### ##### ##### ##### ##### ##### ##### 


# test for trident tag along        ---Tag Along has been cut because crouching happens to often.
# execute store result score @e[sort=nearest,distance=..12] trident_tag_along run scoreboard players get @s trident_id