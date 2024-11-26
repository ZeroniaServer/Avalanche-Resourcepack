#> Pre countdown
execute if score $precountdown CmdData matches 1.. run scoreboard players add $precountdown CmdData 1
execute if score $precountdown CmdData matches 1..19 unless score $RedReady CmdData matches 1 run return run function lobby:cancelcountdown
execute if score $precountdown CmdData matches 1..19 unless score $GreenReady CmdData matches 1 run return run function lobby:cancelcountdown
execute if score $precountdown CmdData matches 20 run function lobby:startcountdown
execute if score $precountdown CmdData matches 1.. run return fail

bossbar set bar_ready_g players
bossbar set bar_ready_r players
bossbar set bar_ready_r value 0
bossbar set bar_ready_g value 0
bossbar set bar_lobby style notched_10

#> Cancel countdown conditions
execute unless score $forcecountdown CmdData matches 1 if score $Countdown CmdData matches 2.. unless entity @a[team=Red] run return run function lobby:cancelcountdown
execute unless score $forcecountdown CmdData matches 1 if score $Countdown CmdData matches 2.. unless entity @a[team=Green] run return run function lobby:cancelcountdown

scoreboard players add $CountSec CmdData 1

#> Countdown sounds
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 2.. as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.1
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 2.. as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 0.4 1.4
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 2.. as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.9
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 2.. as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 0.4 1.2
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 5 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 4 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.2
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 3 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.4
execute if score $CountSec CmdData matches 5 if score $Countdown CmdData matches 2 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 2 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.6
execute if score $CountSec CmdData matches 15 if score $Countdown CmdData matches 2 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.7
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 2 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.8

execute if score $Countdown CmdData matches 2.. run bossbar set bar_lobby name {"translate":"lobby.countdown.seconds","color":"aqua","with":[{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"white"}]}
execute if score $Countdown CmdData matches 1 run bossbar set bar_lobby name {"translate":"lobby.countdown.second","color":"aqua","with":[{"score":{"name":"$Countdown","objective":"CmdData"},"bold":true,"color":"white"}]}

execute if score $CountSec CmdData matches 5 if score $Countdown CmdData matches 1 run function game:forcestart
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 1 run function lobby:unforcecountdown
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 1 run function game:placewall
execute if score $CountSec CmdData matches 20 run scoreboard players remove $Countdown CmdData 1
execute if score $CountSec CmdData matches 20 store result bossbar bar_lobby value run scoreboard players get $Countdown CmdData
execute if score $CountSec CmdData matches 20.. run scoreboard players reset $CountSec CmdData