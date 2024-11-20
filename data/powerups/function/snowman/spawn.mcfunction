execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=1}] at @s run playsound block.snow.place master @a ~ ~ ~ 1 0
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=1}] at @s run playsound block.snow.place master @a ~ ~ ~ 1 1
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=1}] at @s run playsound block.wool.place master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=1}] at @s run particle block{block_state:snow_block} ~ ~ ~ 0.2 0.2 0.2 0.1 30 force

execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=15}] at @s run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=15}] at @s run particle block{block_state:snow_block} ~ ~ ~0.5 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=15}] at @s run particle block{block_state:snow_block} ~ ~ ~-0.5 0 0 0 0.02 2 force

execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=20..25}] at @s run particle block{block_state:snow_block} ~ ~ ~ 0.2 0 0.2 0.02 5 force
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=16..25}] at @s run particle block_crumble{block_state:snow_block} ~ ~0.1 ~ 0.2 0 0.2 0.02 5 force
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=20..25}] at @s run particle block_crumble{block_state:snow_block} ~ ~0.25 ~ 0.2 0 0.2 0.02 5 force
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=23..25}] at @s run particle block_crumble{block_state:snow_block} ~ ~0.5 ~ 0.2 0 0.2 0.02 5 force
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=25..28}] at @s run particle block_crumble{block_state:snow_block} ~ ~0.8 ~ 0.2 0 0.2 0.02 5 force

execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=18}] at @s run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 0.8
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=20}] at @s run playsound minecraft:block.powder_snow.fall master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=aj.snowman.root,scores={CmdData=22}] at @s run playsound minecraft:block.powder_snow.fall master @a ~ ~ ~ 1 1.4
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=40..}] at @s run function powerups:snowman/play_random_idle
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=40..}] at @s run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=40..}] run data merge entity @s {teleport_duration:10}
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=40..}] on passengers run data merge entity @s {teleport_duration:10}
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=29..}] at @s run scoreboard players set @s playerHP 900
execute as @e[type=item_display,tag=aj.snowman.root,tag=!Spawned,tag=!Dying,scores={CmdData=40..}] at @s run tag @s add Spawned