execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#f089a8","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}
execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run playsound entity.item.break master @s ~ ~ ~ 1 0

execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#f089a8","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}
execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run playsound entity.item.break master @s ~ ~ ~ 1 0

tag @a[predicate=lobby:joinpad_green,tag=!RequestSettings] add RequestSettings
tag @a[predicate=lobby:joinpad_red,tag=!RequestSettings] add RequestSettings

tag @a[predicate=!lobby:joinpad_green,predicate=!lobby:joinpad_red,tag=RequestSettings] remove RequestSettings

#> Leave
scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveTeam
execute as @a[tag=LeaveTeam,team=Green] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"green"}]}
execute as @a[tag=LeaveTeam,team=Red] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"red"}]}
execute as @a[tag=LeaveTeam,team=Spectator] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_spectator","color":"dark_aqua","with":[{"selector":"@s","color":"blue"}]}
execute as @a[tag=LeaveTeam,team=!] run function player:leave
execute as @a[tag=LeaveTeam] run tp @s @s
execute unless entity @a[team=Red] unless entity @a[team=Green] if entity @e[type=marker,tag=bs.persistent,limit=1] if score $gamestate CmdData matches 2.. run tellraw @a ["\n",{"translate":"game.no_players","color":"red"}]
execute unless entity @a[team=Red] unless entity @a[team=Green] if score $gamestate CmdData matches 2.. if loaded 0 0 0 run function game:forcestop
execute as @a[tag=LeaveTeam,tag=WasRed] if score $gamestate CmdData matches 0.. run tp @s -40 50 -150 -90 0
execute as @a[tag=LeaveTeam,tag=WasGreen] if score $gamestate CmdData matches 0.. run tp @s -85 54 -149 90 0
execute as @a[tag=LeaveTeam] run gamemode adventure @s
execute as @a[tag=LeaveTeam,tag=!WasGreen,tag=!WasRed] if score $gamestate CmdData matches 0.. run tp @s -65 52 -108 180 0
execute as @a[tag=LeaveTeam] if score $gamestate CmdData matches -1 run tp @s -65 52 -108 0 0
tag @a[tag=LeaveTeam] remove WasRed
tag @a[tag=LeaveTeam] remove WasGreen
execute as @a[tag=LeaveTeam] if score $gamestate CmdData matches -1..4 at @s run playsound block.beehive.exit master @a ~ ~ ~ 1 1
execute as @a[tag=LeaveTeam] run team join Lobby @s
tag @a[tag=LeaveTeam] remove LeaveTeam