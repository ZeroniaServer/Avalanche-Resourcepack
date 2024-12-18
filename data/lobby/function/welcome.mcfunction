tp @s -65 52 -65 -180 0
execute at @s run playsound ding master @s ~ ~-1 ~ 1 1.75
title @s title [{"text":"\uE018","shadow_color":[0,0,0,0.5]}]
title @s subtitle ["",{"translate":"game.made_by","color":"gray","with":[{"text":"v1.0.0pre1","color":"aqua"},{"translate":"zeronia","color":"green"}]}]
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome","color":"dark_aqua","with":[{"translate":"chat.welcome.snowy","color":"green","bold":true},{"translate":"chat.welcome.skirmish","color":"red","bold":true},{"translate":"chat.welcome.two","color":"aqua","bold":true},{"translate":"chat.welcome.avalanche","color":"white","bold":true}]}
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome.point","with":[{"text":"❄","color":"white"},{"translate":"chat.welcome.point.1","color":"gold","with":[{"translate":"book.title","color":"aqua","bold":true}]}]}
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome.point","with":[{"text":"❄","color":"white"},{"translate":"chat.welcome.point.2","color":"gold","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}]}
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome.point","with":[{"text":"❄","color":"white"},{"translate":"chat.welcome.point.3","color":"gold"}]}
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome.point","with":[{"text":"❄","color":"white"},{"translate":"chat.welcome.point.4","color":"gold"}]}
tellraw @s[tag=!firstJoined] {"translate":"chat.welcome.point","with":[{"text":"❄","color":"white"},{"translate":"chat.welcome.point.5","color":"gold","with":[{"text":"☃","color":"white"}]}]}

tag @s add firstJoined