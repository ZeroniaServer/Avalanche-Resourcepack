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
execute if score @s leavecheck = $curr leavecheck if score $gamestate CmdData matches 0.. run tp @s -65 52 -108 180 0
execute if score @s leavecheck = $curr leavecheck run tellraw @s[tag=inParkour] [{"translate":"parkour.left_canceled","color":"red"}]
tag @s[tag=inParkour] remove resettimeonce
tag @s[tag=inParkour] remove inParkour

execute if score @s leavecheck = $curr leavecheck at @s run playsound ding master @s ~ ~ ~ 0.5 1.75
title @s title ""
title @s subtitle ""
execute unless score @s leavecheck = $curr leavecheck run function lobby:welcome
execute unless score @s GamesPlayed matches -2147483648..2147483647 run scoreboard players set @s GamesPlayed 3

#> Notify players about resource pack
# TODO UPDATE VERSION NUMBER
execute if score $gamestate CmdData matches 0..3 run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{"translate":"ver0.0.3","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"ReadyToPlay","storage":"avalanche:messages","interpret":true}]}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=!gotTheMemo] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"avalanche:messages","interpret":true},{"translate":"ver0.0.2","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"avalanche:messages","interpret":true},{"nbt":"SettingsBox","storage":"avalanche:messages","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger settings"}}]}]}]
tag @s remove gotTheMemo
tag @s add SilentRespawn
scoreboard players set @s playerHP 20
attribute @s minecraft:block_interaction_range base set 4.5
scoreboard players operation @s leavecheck = $curr leavecheck
scoreboard players operation @s gameID = $current gameID