# 5 - Longer Lockon
scoreboard players set #preset trident.config 5
##### ##### ##### ##### ##### ##### ##### ##### 

scoreboard players set #trident_lock trident.config 500
scoreboard players set #auto_recall trident.config 0
scoreboard players set #instant_recall trident.config 0

scoreboard players set #save_loyal trident.config 0
scoreboard players set #save_trident trident.config 0

scoreboard players set #immortal_trident trident.config 1



function trident_ih:preset/relock

##### ##### ##### ##### ##### ##### ##### ##### ##### 
execute store result score #sendCommandFeedback trident.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback trident.config matches 1 run function trident_ih:hide_command_feedback

