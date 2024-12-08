execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#f089a8","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}
execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run playsound joinfail master @s ~ ~ ~ 1 0

execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#f089a8","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}
execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run playsound joinfail master @s ~ ~ ~ 1 0

tag @a[predicate=lobby:joinpad_green,tag=!RequestSettings] add RequestSettings
tag @a[predicate=lobby:joinpad_red,tag=!RequestSettings] add RequestSettings

tag @a[predicate=!lobby:joinpad_green,predicate=!lobby:joinpad_red,tag=RequestSettings] remove RequestSettings

#> Leave
scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[tag=LeaveTeam,team=Spectator] at @s run tellraw @a {"translate":"lobby.left_spectator","color":"dark_aqua","with":[{"selector":"@s","color":"blue"}]}
execute as @a[tag=LeaveTeam,team=!] run function player:leave
execute as @a[tag=LeaveTeam] run tp @s @s
execute as @a[tag=LeaveTeam] run gamemode adventure @s
execute as @a[tag=LeaveTeam,tag=WasSpectator] run tp @s -65 52 -108 180 0
execute as @a[tag=LeaveTeam,tag=!WasSpectator] run tp @s -65 52 -108 0 0
execute as @a[tag=LeaveTeam,tag=!WasSpectator] at @s run playsound leaveteam master @a ~ ~ ~ 1 1
execute as @a[tag=LeaveTeam,tag=WasSpectator] at @s run playsound leavespectator master @a ~ ~ ~ 1 1
tag @a[tag=LeaveTeam] remove WasSpectator
execute as @a[tag=LeaveTeam] run team join Lobby @s
tag @a[tag=LeaveTeam] remove LeaveTeam