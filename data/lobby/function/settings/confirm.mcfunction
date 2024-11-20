fill -62 53 -93 -64 54 -93 air
scoreboard players reset @a modify
tag @a remove ModiOwner
execute as @a at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
scoreboard players set $gamestate CmdData 0

scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0

scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

function arenaclear:reset

say TODO: Settings confirmed, game is ready to play.

fill -62 53 -93 -64 53 -93 air

function bossbars:get_points

scoreboard players set $60 CmdData 60
scoreboard players set $20 CmdData 20

execute store result score $ticks CmdData run scoreboard players operation $Minutes CmdData *= $60 CmdData
execute store result score $ticks CmdData run scoreboard players operation $ticks CmdData *= $20 CmdData

execute store result score $prepticks CmdData run scoreboard players get $PrepSeconds CmdData
scoreboard players operation $prepticks CmdData *= $20 CmdData

function lobby:settings/refreshsigns with storage lobby:customizer