team join Lobby @s
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_r players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_g players @a
gamemode adventure @s
clear @s
spawnpoint @s -65 52 -52
tp @s @s
execute if score $gamestate CmdData matches -1 run tp @s[tag=firstJoined] -65 52 -108 0 0
execute if score $gamestate CmdData matches 0.. run tp @s[tag=firstJoined] -65 52 -108 180 0
execute if entity @s[tag=!firstJoined] run tp @s -65 54 -52 -180 0
execute if entity @s[tag=!firstJoined] run say TODO: Welcome!
tag @s add firstJoined
scoreboard players operation @s leavecheck = $curr leavecheck
scoreboard players operation @s gameID = $current gameID
playsound entity.player.levelup master @s ~ ~ ~ 1 1.75
title @s title ""
title @s subtitle ""
title @s actionbar ""