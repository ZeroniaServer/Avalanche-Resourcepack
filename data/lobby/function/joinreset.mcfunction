team join Lobby @s
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a[team=Lobby]
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby_hearts players @a[team=Lobby,gamemode=!spectator]
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_r players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_g players @a
execute if score $gamestate CmdData matches 1 if score $precountdown CmdData matches 1.. run bossbar set bar_ready_r players @a
execute if score $gamestate CmdData matches 1 if score $precountdown CmdData matches 1.. run bossbar set bar_ready_g players @a
execute if score $gamestate CmdData matches ..1 run bossbar set bar_lobby_hearts players @a[team=!Spectator,gamemode=!spectator]

gamemode adventure @s
clear @s
function lobby:items
spawnpoint @s -65 52 -65
tp @s @s
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches -1 run tp @s -65 52 -108 0 0
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches 0.. run tp @s[tag=!WasRed,tag=!WasGreen] -65 52 -108 180 0
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches 0.. run tp @s[tag=WasRed] -40 50 -151 -90 0
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches 0.. run tp @s[tag=WasGreen] -85 54 -149 90 0
tag @s remove WasRed
tag @s remove WasGreen
execute if score @s leavecheck = $curr leavecheck run tellraw @s[tag=inParkour] [{translate:"parkour.left_canceled",color:"red"}]
tag @s[tag=inParkour] remove resettimeonce
execute as @s[tag=inParkour] run function lobby:parkour/updatejumps
tag @s[tag=inParkour] remove inParkour

execute if score @s leavecheck = $curr leavecheck at @s run playsound ding master @s ~ ~ ~ 0.5 1.75
title @s title ""
title @s subtitle ""
execute unless score @s leavecheck = $curr leavecheck run function lobby:welcome

#> Notify players about resource pack
execute if score $gamestate CmdData matches 0..3 run tellraw @s ["",{translate:"%1$s",with:[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{translate:"ver1.0.1","fallback":"%1$s",with:[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"ReadyToPlay","storage":"avalanche:messages","interpret":true}]}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=!gotTheMemo] ["",{translate:"%1$s",with:[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{translate:"ver1.0.1","fallback":"%1$s",with:[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"SettingsBox","storage":"avalanche:messages","interpret":true,click_event:{action:"run_command",command:"/trigger settings"}}]}]}]
tag @s remove gotTheMemo
tag @s add SilentRespawn
scoreboard players set @s playerHP 20
attribute @s minecraft:block_interaction_range base set 4.5
execute if score @s leavecheck = $curr leavecheck run function lobby:settings/announce with storage lobby:customizer
scoreboard players operation @s leavecheck = $curr leavecheck
scoreboard players operation @s gameID = $current gameID
scoreboard players reset @s HitmarkerTimer
scoreboard players reset @s HitmarkerType
tag @s remove IFrame
scoreboard players reset @s iframe