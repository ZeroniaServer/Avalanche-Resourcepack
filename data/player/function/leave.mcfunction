# player will already leave from forcestop
execute if entity @s[tag=LeaveTeam] unless entity @a[team=Red] unless entity @a[team=Green] if score $gamestate CmdData matches 2.. run return fail

ride @s dismount
scoreboard players set @s playerHP 20
scoreboard players reset @s respawn
function inventory:clear
effect clear @s blindness
effect clear @s darkness
scoreboard players reset @s gameID
tag @s remove Blasted
tag @s remove SnowMark
tag @s remove Knockout
tag @s remove CoalBlind
tag @s remove snowmanTarget
tag @s remove SleighDismounted
tag @s remove KOmessaged
tag @s remove avdamaged
tag @s remove IFrame
scoreboard players reset @s iframe
scoreboard players reset @s blizzardtime
attribute @s minecraft:block_interaction_range base set 4.5
tag @s add SilentRespawn
tag @s remove NaturalRespawn
tag @s[team=Red] add WasRed
tag @s[team=!Red] remove WasRed
tag @s[team=Green] add WasGreen
tag @s[team=!Green] remove WasGreen
tag @s[team=Spectator] add WasSpectator
tag @s[team=!Spectator] remove WasSpectator
team leave @s
scoreboard players reset @s HitmarkerTimer
scoreboard players reset @s HitmarkerType
clear @s
function lobby:items
scoreboard players reset @s leftgame
title @s actionbar ""