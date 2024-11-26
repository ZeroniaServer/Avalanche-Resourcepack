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
tag @s remove SilentRespawn
tag @s remove NaturalRespawn
tag @s[team=Red] add WasRed
tag @s[team=!Red] remove WasRed
tag @s[team=Green] add WasGreen
tag @s[team=!Green] remove WasGreen
team leave @s
clear @s
scoreboard players reset @s leftgame
title @s actionbar ""