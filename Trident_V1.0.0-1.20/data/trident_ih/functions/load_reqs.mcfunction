# load_reqs
#
# Creates all trident Reqs
# player/trident ID
scoreboard objectives add trident_id dummy
# trident throw utility tracker (trident Lock timer trigger, when thrown)
scoreboard objectives add trident_throw minecraft.used:minecraft.trident
# Trident in world filter (tracks 60 seconds, used to sync lockon for each player)
scoreboard objectives add trident_lock dummy
execute unless score #trident_lock trident.config matches 0.. unless score #trident_lock trident.config matches ..0 run scoreboard players set #trident_lock trident.config 60
#logout/in tracker for new/login advs
scoreboard objectives add trident_logout minecraft.custom:minecraft.leave_game
############################################################ 
execute unless score #immortal_trident trident.config matches 0.. run scoreboard players set #immortal_trident trident.config 1
execute unless score #save_loyal trident.config matches 0.. run scoreboard players set #save_loyal trident.config 0
execute unless score #save_trident trident.config matches 0.. run scoreboard players set #save_trident trident.config 0
execute unless score #auto_recall trident.config matches 0.. run scoreboard players set #auto_recall trident.config 0
execute unless score #instant_recall trident.config matches 0.. run scoreboard players set #instant_recall trident.config 0

############################################################ 
execute unless score #preset trident.config matches 0.. run scoreboard players set #preset trident.config 1


