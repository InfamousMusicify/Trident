# trident_ih:tick
# say tick
#
schedule function trident_ih:tick 1t
execute as @a unless score @s trident_id matches 1.. store result score @s trident_id run scoreboard players add #last trident_id 1
# loging/out redundancy
execute as @a[scores={trident_logout=1..}] run function trident_ih:logout
# save tridents from void
execute if score #save_loyal trident.config matches 0 as @e[type=minecraft:trident,predicate=trident_ih:loyal,tag=!trident_saved] run function trident_ih:save_loyal
execute if score #save_trident trident.config matches 0 as @e[type=minecraft:trident,predicate=trident_ih:loyal_trident,tag=!trident_saved] run function trident_ih:save_trident
# trident ID and lockon
execute as @a[scores={trident_throw=1..}] run function trident_ih:lockon
