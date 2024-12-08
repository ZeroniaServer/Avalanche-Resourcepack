scoreboard players remove @s[tag=!Dying,scores={playerHP=1..}] playerHP 1
execute at @s[tag=!Dying,scores={playerHP=..450}] run particle block_crumble{block_state:snow_block} ~ ~0.2 ~ 0.2 0 0.2 0.01 4 force
execute at @s[tag=!Dying,scores={playerHP=20..350}] run particle splash ~ ~1 ~ 0.2 0.3 0.2 0.01 1 force
execute at @s[tag=!Dying,scores={playerHP=20..200}] run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.2 0.4 0.2 0.01 3 force
execute at @s[tag=!Dying,scores={playerHP=20..100}] run particle falling_water ~ ~1 ~ 0.2 0.3 0.2 0.01 1 force

tag @s[tag=!Dying,scores={playerHP=..0}] remove Targeting
scoreboard players set @s[tag=!Dying,scores={playerHP=..0}] CmdData 50
execute at @s[tag=!Dying,scores={playerHP=..0}] run tp @s ~ ~ ~
execute at @s[tag=!Dying,scores={playerHP=..0}] run rotate @s ~ ~
execute at @s[tag=!Dying,scores={playerHP=..0}] run function powerups:snowman/stop_all_anims
execute at @s[tag=!Dying,scores={playerHP=..0}] run function animated_java:snowman/animations/death/play
tag @s[tag=!Dying,scores={playerHP=..0}] add Dying
execute at @s[tag=Dying,scores={playerHP=..0}] on passengers on passengers run function arenaclear:kill

execute at @s[tag=Dying,scores={CmdData=50}] run particle block{block_state:snow_block} ~ ~1 ~ 0.5 1 0.5 0.1 20
execute at @s[tag=Dying,scores={CmdData=53..57}] run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.3 0.6 0.3 0.1 20
execute at @s[tag=Dying,scores={CmdData=50}] run playsound snowmandie1 master @a ~ ~ ~ 1 0
execute at @s[tag=Dying,scores={CmdData=50}] run playsound snowmandie1 master @a ~ ~ ~ 1 0.7
execute at @s[tag=Dying,scores={CmdData=50}] run playsound snowmandie1 master @a ~ ~ ~ 1 1.2
execute at @s[tag=Dying,scores={CmdData=50}] run playsound snowmandie2 master @a ~ ~ ~ 1 2
execute at @s[tag=Dying,scores={CmdData=50}] run playsound snowmandie3 master @a ~ ~ ~ 1 0
execute at @s[tag=Dying,scores={CmdData=50..55}] run playsound snowmandie2 master @a ~ ~ ~ 1 0
execute at @s[tag=Dying,scores={CmdData=50..58}] run playsound snowmandie2 master @a ~ ~ ~ 1 2
execute at @s[tag=Dying,scores={CmdData=55}] run playsound snowmandie4 master @a ~ ~ ~ 1 1
execute at @s[tag=Dying,scores={CmdData=57}] run playsound snowmandie4 master @a ~ ~ ~ 1 0.7
execute at @s[tag=Dying,scores={CmdData=59}] run playsound snowmandie4 master @a ~ ~ ~ 1 1.3

execute at @s[tag=Dying,scores={CmdData=61}] run playsound snowmanhatland master @a ~ ~ ~ 1 1.2
execute at @s[tag=Dying,scores={CmdData=85}] run playsound snowmansnow master @a ~ ~ ~ 1 0
execute at @s[tag=Dying,scores={CmdData=85..87}] run particle block{block_state:snow_block} ^ ^ ^-0.5 0.1 0 0.1 0.1 5

execute at @s[tag=Dying,scores={CmdData=219}] run particle block{block_state:black_wool} ^ ^ ^-1.25 0.1 0 0.1 0.1 30
execute at @s[tag=Dying,scores={CmdData=219}] run playsound snowmanhatbreak master @a ~ ~ ~ 0.4 1.2
execute at @s[tag=Dying,scores={CmdData=220..}] run function arenaclear:kill_recursive