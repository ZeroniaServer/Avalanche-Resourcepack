team join Lobby @s
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_r players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_g players @a
gamemode adventure @s
clear @s
spawnpoint @s -65 52 -65
tp @s @s
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches -1 run tp @s -65 52 -108 0 0
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches 0.. run tp @s -65 52 -108 180 0
title @s title ""
title @s subtitle ""
execute unless score @s leavecheck = $curr leavecheck run function lobby:welcome

#> Notify players about resource pack
# TODO UPDATE VERSION NUMBER
execute if score $gamestate CmdData matches 0..3 run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{"translate":"ver0.0.2","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"ReadyToPlay","storage":"avalanche:messages","interpret":true}]}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{"translate":"ver0.0.2","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"SettingsMap","storage":"avalanche:messages","interpret":true}]}]}]

tag @s add SilentRespawn
scoreboard players set @s playerHP 20
scoreboard players operation @s leavecheck = $curr leavecheck
scoreboard players operation @s gameID = $current gameID