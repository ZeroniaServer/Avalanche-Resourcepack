execute if entity @s[tag=Green] positioned ~ ~0.5 ~ if entity @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ if entity @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving

execute if entity @s[tag=Green] positioned ~ ~0.5 ~ if entity @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s CmdData 550
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ if entity @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s CmdData 550

execute if entity @s[tag=Green] positioned ~ ~0.5 ~ as @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s playerHP 3
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ as @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s playerHP 3