# config

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                Better Tridents",{"text":" / ","color":"gray"},"Global Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
#

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #immortal_trident trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle trident trident immortality.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 1\n0=OFF - 1=ON","color":"dark_gray"}]}}," Immortal trident ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#immortal_trident","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #save_loyal trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle saving loyalty tridents from the void.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON - 1=OFF","color":"dark_gray"}]}}," Save Loyal Tridents ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#save_loyal","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #save_trident trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle saving all tridents from the void.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON - 1=OFF","color":"dark_gray"}]}}," Save All Tridents ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#save_trident","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #auto_recall trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle trident auto recall.\n(If this is OFF lockon scores will not be counted!\nfor immortal settings and flexability.\nturn this on before turning off immortal to keep lockon/life scores for tridents and players intact.\nor use presets for easy switching.)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON - 1=OFF","color":"dark_gray"}]}}," Auto Recall ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#auto_recall","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #instant_recall trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle instant auto recall.\nRecomendations: Keep this on if Lockon is 60+, \nit will save many tridents from being lost. \nTurn off if you dont like/want tridents constantly resummoning. \nWhen off trident Lockon will be the teleport time interval.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON - 1=OFF","color":"dark_gray"}]}}," Instant Auto Recall ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#instant_recall","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #trident_lock trident.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Auto Recall Timer & Instant Auto Recall 'Off' Interval\nClick to edit trident lockon time in seconds. \n(How long each will trident be locked onto, \nset 60 or below, if immortal trident is off \nor tridents may be lost to despawning.)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\nDefault: 60","color":"dark_gray"}]}}," Trident Lockon ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#trident_lock","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]


tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/function trident_ih:presets"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to list presets.\n(Change global settings all at once.) \n(Examples of how to use the pack.)\n# = last preset used","color":"gray"},{"text":"","color":"dark_gray"}]}}," Presets ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#preset","objective":"trident.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
##### ##### ##### 
execute store result score #sendCommandFeedback trident.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback trident.config matches 1 run function trident_ih:hide_command_feedback
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

