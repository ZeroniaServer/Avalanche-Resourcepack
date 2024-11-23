execute at @s[scores={CmdData=1}] run playsound block.snow.place master @a ~ ~ ~ 1 0
execute at @s[scores={CmdData=1}] run playsound block.snow.place master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=1}] run playsound block.wool.place master @a ~ ~ ~ 1 2
execute at @s[scores={CmdData=1}] run particle block{block_state:snow_block} ~ ~ ~ 0.2 0.2 0.2 0.1 30 force

execute at @s[scores={CmdData=15}] run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 1.2
execute at @s[scores={CmdData=15}] run particle block{block_state:snow_block} ~ ~ ~0.5 0 0 0 0.02 2 force
execute at @s[scores={CmdData=15}] run particle block{block_state:snow_block} ~ ~ ~-0.5 0 0 0 0.02 2 force

execute at @s[scores={CmdData=20..25}] run particle block{block_state:snow_block} ~ ~ ~ 0.2 0 0.2 0.02 5 force
execute at @s[scores={CmdData=16..25}] run particle block_crumble{block_state:snow_block} ~ ~0.1 ~ 0.2 0 0.2 0.02 5 force
execute at @s[scores={CmdData=20..25}] run particle block_crumble{block_state:snow_block} ~ ~0.25 ~ 0.2 0 0.2 0.02 5 force
execute at @s[scores={CmdData=23..25}] run particle block_crumble{block_state:snow_block} ~ ~0.5 ~ 0.2 0 0.2 0.02 5 force
execute at @s[scores={CmdData=25..28}] run particle block_crumble{block_state:snow_block} ~ ~0.8 ~ 0.2 0 0.2 0.02 5 force

execute at @s[scores={CmdData=18}] run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=20}] run playsound minecraft:block.powder_snow.fall master @a ~ ~ ~ 1 1.2
execute at @s[scores={CmdData=22}] run playsound minecraft:block.powder_snow.fall master @a ~ ~ ~ 1 1.4
execute at @s[tag=!Spawned,tag=!Dying,scores={CmdData=40..}] run function powerups:snowman/play_random_idle
scoreboard players set @s[tag=!Spawned,tag=!Dying,scores={CmdData=40..}] CmdData 50
data merge entity @s[tag=!Spawned,tag=!Dying,scores={CmdData=40..}] {teleport_duration:10}
execute if entity @s[tag=!Spawned,tag=!Dying,scores={CmdData=40..}] on passengers run data merge entity @s {teleport_duration:10}
scoreboard players set @s[tag=!Spawned,tag=!Dying,scores={CmdData=29..}] playerHP 900
tag @s[tag=!Spawned,tag=!Dying,scores={CmdData=40..}] add Spawned