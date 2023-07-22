# trident_ih:load
### Update Patch ###
# Player IDs (Patch tracker #patch)-(for tag along function? maybe deprecated must check.)
scoreboard objectives add trident.config dummy
# re enable after first major update
##### scoreboard players add #patch trident.config 0
##### execute if score #patch trident.config matches ..10 run function trident_ih:patch

# Update patch number when pathcing,            ^ and updt internal #'s. ^
# fix scoreboard overload (1 under 32-bit integer limit)
execute if score #last trident_id matches 2147483646.. run function trident_ih:uninstall_m
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# Scoreboard add #
function trident_ih:load_reqs
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
schedule clear trident_ih:tick
schedule clear trident_ih:tick_1s
schedule function trident_ih:tick 1t
schedule function trident_ih:tick_1s 1s
#


#____________________________________________________________________________________________________________________________#
# Notes:
# 
#
#
#
#
#
#
