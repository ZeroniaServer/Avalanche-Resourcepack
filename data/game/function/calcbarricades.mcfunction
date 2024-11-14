#> Store blocks per player in macro variable
execute as @a[team=Green] store result score @s BarricadeTracker run scoreboard players operation $Barricades CmdData /= $InGreen CmdData
execute as @a[team=Red] store result score @s BarricadeTracker run scoreboard players operation $Barricades CmdData /= $InRed CmdData

loot give @s loot powerups:barricade_prep