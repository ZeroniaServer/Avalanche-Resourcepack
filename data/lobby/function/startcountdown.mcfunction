scoreboard players set $Countdown CmdData 10
scoreboard players set $CountSec CmdData 0
execute store result bossbar bar_lobby value run scoreboard players get $Countdown CmdData
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.8
scoreboard players reset $precountdown CmdData
data modify block -95 54 -151 front_text.messages[0] set value '{"translate":"lobby.countdown_sign.1","color":"aqua","bold":true}'
data modify block -95 54 -151 front_text.messages[1] set value '{"translate":"lobby.countdown_sign.2","color":"aqua","bold":true}'
data modify block -95 54 -151 front_text.messages[2] set value '{"translate":"lobby.countdown_sign.3","color":"aqua","bold":true}'
data modify block -95 54 -151 front_text.messages[3] set value '{"translate":"lobby.countdown_sign.4","color":"aqua","bold":true}'
data modify block -23 50 -148 front_text.messages[0] set value '{"translate":"lobby.countdown_sign.1","color":"aqua","bold":true}'
data modify block -23 50 -148 front_text.messages[1] set value '{"translate":"lobby.countdown_sign.2","color":"aqua","bold":true}'
data modify block -23 50 -148 front_text.messages[2] set value '{"translate":"lobby.countdown_sign.3","color":"aqua","bold":true}'
data modify block -23 50 -148 front_text.messages[3] set value '{"translate":"lobby.countdown_sign.4","color":"aqua","bold":true}'
scoreboard players reset @a readyup