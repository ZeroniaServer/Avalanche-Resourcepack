execute as @e[type=item_display,tag=Snowman,tag=!Dying] if score @s playerHP matches 1.. run scoreboard players remove @s playerHP 1
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..450 run particle block_crumble{block_state:snow_block} ~ ~0.2 ~ 0.2 0 0.2 0.01 4 force
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches 20..350 run particle splash ~ ~1 ~ 0.2 0.3 0.2 0.01 1 force
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches 20..200 run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.2 0.4 0.2 0.01 3 force
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches 20..100 run particle falling_water ~ ~1 ~ 0.2 0.3 0.2 0.01 1 force

execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run tag @s remove Targeting
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run tp @s ~ ~ ~
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run rotate @s ~ ~
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run function animated_java:snowman/animations/death/play
execute as @e[type=item_display,tag=Snowman,tag=!Dying] at @s if score @s playerHP matches ..0 run tag @s add Dying
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={playerHP=..0}] on passengers on passengers run function arenaclear:kill

execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run particle block{block_state:snow_block} ~ ~1 ~ 0.5 1 0.5 0.1 20
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=53..57}] at @s run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.3 0.6 0.3 0.1 20
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run playsound block.snow.break master @a ~ ~ ~ 1 0
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run playsound block.snow.break master @a ~ ~ ~ 1 0.7
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run playsound block.snow.break master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run playsound block.powder_snow.place master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50}] at @s run playsound minecraft:entity.snow_golem.hurt master @a ~ ~ ~ 1 0
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50..55}] at @s run playsound minecraft:block.powder_snow.break master @a ~ ~ ~ 1 0
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=50..58}] at @s run playsound minecraft:block.powder_snow.break master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=55}] at @s run playsound minecraft:block.snow.fall master @a ~ ~ ~ 1 1
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=57}] at @s run playsound minecraft:block.snow.fall master @a ~ ~ ~ 1 0.7
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=59}] at @s run playsound minecraft:block.snow.fall master @a ~ ~ ~ 1 1.3

execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=61}] at @s run playsound minecraft:block.wool.fall master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=85}] at @s run playsound block.powder_snow.fall master @a ~ ~ ~ 1 0
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=85..87}] at @s run particle block{block_state:snow_block} ^ ^ ^-0.5 0.1 0 0.1 0.1 5

execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=219}] at @s run particle block{block_state:black_wool} ^ ^ ^-1.25 0.1 0 0.1 0.1 30
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=219}] at @s run playsound block.wool.break master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=220..}] on passengers run kill @s
execute as @e[type=item_display,tag=Snowman,tag=Dying,scores={CmdData=220..}] at @s run kill @s