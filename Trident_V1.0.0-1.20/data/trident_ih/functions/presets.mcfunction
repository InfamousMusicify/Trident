#presets
# tellraw
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                Better Tridents",{"text":" / ","color":"gray"},"Presets"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Default","color":"gray"},{"text":"\nlockon = 60 \nauto_recall = on \ninstant_recall = on \nimmortal_trident = on \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 1 Default ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Non-Immortal","color":"gray"},{"text":"\nlockon = 60 \nauto_recall = on \ninstant_recall = on \nimmortal_trident = off \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 2 Non-Immortal ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"No Instant Recall","color":"gray"},{"text":"\nlockon = 60 \nauto_recall = on \ninstant_recall = off \nimmortal_trident = on \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 3 No Instant Recall ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"No Auto Recall","color":"gray"},{"text":"\nlockon = 60 \nauto_recall = off \ninstant_recall = off \nimmortal_trident = on \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 4 No Auto Recall ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Longer Lockon","color":"gray"},{"text":"\nlockon = 500 \nauto_recall = on \ninstant_recall = on \nimmortal_trident = on \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 5 Longer Lockon ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function trident_ih:preset/6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Shorter Lockon","color":"gray"},{"text":"\nlockon = 120 \nauto_recall = on \ninstant_recall = on \nimmortal_trident = on \nsave_loyal = on \nsave_trident = on","color":"dark_gray"}]}}," 6 Shorter Lockon ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]


##### ##### ##### 
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable "},"hoverEvent":{"action":"show_text","contents":["",{"text":"disable a datapack","color":"gray"},{"text":"","color":"dark_gray"}]}}," Disable ",{"text":"","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]


##### ##### ##### ##### ##### ##### ##### ##### ##### 
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
execute store result score #sendCommandFeedback trident.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback trident.config matches 1 run function trident_ih:hide_command_feedback