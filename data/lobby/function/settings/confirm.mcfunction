fill -90 53 -148 -90 55 -150 minecraft:cyan_stained_glass
fill -35 51 -149 -35 49 -151 pink_stained_glass

fill -62 53 -93 -64 54 -93 air
scoreboard players reset @a modify
tag @a remove ModiOwner
execute as @a at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
scoreboard players set $gamestate CmdData 0

scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0

scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

function lobby:settings/announce with storage lobby:customizer

fill -62 53 -93 -64 53 -93 air

function bossbars:get_points

scoreboard players set $60 CmdData 60
scoreboard players set $20 CmdData 20

execute store result score $ticks CmdData run scoreboard players get $Minutes CmdData
execute store result score $ticks CmdData run scoreboard players operation $ticks CmdData *= $60 CmdData
execute store result score $ticks CmdData run scoreboard players operation $ticks CmdData *= $20 CmdData

execute store result score $prepticks CmdData run scoreboard players get $PrepSeconds CmdData
scoreboard players operation $prepticks CmdData *= $20 CmdData

execute store result bossbar bar_prep value run scoreboard players get $prepticks CmdData
execute store result bossbar bar_prep max run scoreboard players get $prepticks CmdData

bossbar set bar_lobby style progress

function lobby:settings/refreshsigns with storage lobby:customizer

tag @a remove RequestSettings