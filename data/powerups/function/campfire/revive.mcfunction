execute if entity @s[tag=Green] positioned ~ ~0.5 ~ if entity @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ if entity @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving

execute if entity @s[tag=Green] positioned ~ ~0.5 ~ if entity @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s CmdData 1150
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ if entity @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s CmdData 1150

execute if entity @s[tag=Green] positioned ~ ~0.5 ~ as @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ as @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run tag @s add Reviving

execute if entity @a[tag=Reviving] on passengers if entity @s[type=area_effect_cloud] on origin run tag @s add cfPlacer
# fixes edge case where you're revived by a former team member's campfire
execute as @a[tag=Reviving,team=Red] unless entity @s[tag=cfPlacer] run tellraw @a {"translate":"revive.campfire.other","color":"dark_aqua","with":[{"selector":"@s"},{"selector":"@a[tag=cfPlacer,limit=1]","color":"red"}]}
execute as @a[tag=Reviving,team=Green] unless entity @s[tag=cfPlacer] run tellraw @a {"translate":"revive.campfire.other","color":"dark_aqua","with":[{"selector":"@s"},{"selector":"@a[tag=cfPlacer,limit=1]","color":"green"}]}
execute as @a[tag=Reviving] if entity @s[tag=cfPlacer] run tellraw @a {"translate":"revive.campfire.self","color":"dark_aqua","with":[{"selector":"@s"}]}
execute if entity @a[tag=Reviving] on passengers if entity @s[type=area_effect_cloud] on origin run tag @s remove cfPlacer
execute as @a[tag=Reviving] at @s run particle heart ~ ~1 ~ 0.3 0.3 0.3 0.1 6 force
execute as @a[tag=Reviving] at @s run particle cloud ~ ~1.4 ~ 0.3 0.3 0.3 0 4 force
execute as @a[tag=Reviving] at @s run particle block{block_state:snow_block} ~ ~1.6 ~ 0.1 0.1 0.1 0.1 20 force
execute as @a[tag=Reviving] at @s run particle splash ~ ~1.6 ~ 0.1 0.1 0.1 0.1 20 force
execute as @a[tag=Reviving] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 0.6 1.2
execute as @a[tag=Reviving] at @s run scoreboard players reset @s iframe
execute as @a[tag=Reviving] at @s run tag @s add IFrame
tag @a remove Reviving

execute if entity @s[tag=Green] positioned ~ ~0.5 ~ as @a[team=Green,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s playerHP 3
execute if entity @s[tag=Red] positioned ~ ~0.5 ~ as @a[team=Red,distance=..3,tag=Knockout,scores={playerHP=..0},limit=1,sort=nearest] run scoreboard players set @s playerHP 3