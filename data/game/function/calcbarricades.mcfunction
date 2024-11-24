#> Store blocks per player in score variable

scoreboard players reset @a BarricadeTracker
execute as @a[team=Green] store result score @s BarricadeTracker run scoreboard players get $Barricades CmdData
execute as @a[team=Green] store result score @s BarricadeTracker run scoreboard players operation @s BarricadeTracker /= $InGreen CmdData

execute as @a[team=Red] store result score @s BarricadeTracker run scoreboard players get $Barricades CmdData
execute as @a[team=Red] store result score @s BarricadeTracker run scoreboard players operation @s BarricadeTracker /= $InRed CmdData

execute as @a[team=Green] run loot give @s loot powerups:barricade_prep
execute as @a[team=Red] run loot give @s loot powerups:barricade_prep