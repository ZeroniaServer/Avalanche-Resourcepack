scoreboard players add $CountSec CmdData 1

#> Countdown sounds
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 1.. as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.1
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 1.. as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 0.4 1.4
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 1.. as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.9
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 1.. as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 0.4 1.2
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 4 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 3 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.2
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 2 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.4
execute if score $CountSec CmdData matches 5 if score $Countdown CmdData matches 1 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.5
execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 1 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.6
execute if score $CountSec CmdData matches 15 if score $Countdown CmdData matches 1 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.7
execute if score $CountSec CmdData matches 20 if score $Countdown CmdData matches 1 as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.8

execute if score $CountSec CmdData matches 10 if score $Countdown CmdData matches 0 run function game:forcestart
execute if score $CountSec CmdData matches 20 run scoreboard players remove $Countdown CmdData 1
execute if score $CountSec CmdData matches 20.. run scoreboard players reset $CountSec CmdData