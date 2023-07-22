# relock
execute as @e[type=minecraft:trident,scores={trident_id=0..}] run scoreboard players operation @s trident_lock = #trident_lock trident.config
execute as @a run scoreboard players operation @s trident_lock = #trident_lock trident.config


