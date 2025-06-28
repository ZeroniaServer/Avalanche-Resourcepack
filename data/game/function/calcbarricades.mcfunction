#> Store blocks per player in score variable

scoreboard players reset @s BarricadeTracker
execute store result score @s BarricadeTracker run scoreboard players get $Barricades CmdData
scoreboard players operation @s[team=Green] BarricadeTracker /= $InGreen CmdData
scoreboard players operation @s[team=Red] BarricadeTracker /= $InRed CmdData