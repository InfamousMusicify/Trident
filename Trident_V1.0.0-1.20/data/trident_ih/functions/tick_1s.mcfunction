# trident_ih:tick_1s
# say tick_1s
#
schedule function trident_ih:tick_1s 1s
# lockon cooldown - trident_unlock  #note: disabled if auto_recall is off to maintain player and trident scores for infinitely/variably long intentional teleport delays, and to restart scores count when recall/immortality is disabled
execute if score #auto_recall trident.config matches 0 as @e[scores={trident_lock=1..}] run scoreboard players remove @s trident_lock 1
#execute as @a[scores={trident_lock=1..}] run scoreboard players remove @s trident_lock 1
# Immortal tridents -any/only tridents thrown by a player.
execute if score #immortal_trident trident.config matches 1.. as @e[type=minecraft:trident,scores={trident_id=0..}] run data merge entity @s {life:1s,Invulnerable:1b}
# auto recall
execute if score #auto_recall trident.config matches 0 as @e[type=minecraft:trident,scores={trident_lock=0}] run function trident_ih:save_trident



