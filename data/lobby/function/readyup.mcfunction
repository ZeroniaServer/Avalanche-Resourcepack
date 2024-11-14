#> Enable readyup triggers
execute if score $gamestate CmdData matches 0 run scoreboard players enable @a[team=Green] readyup
execute if score $gamestate CmdData matches 0 run scoreboard players enable @a[team=Red] readyup

#> Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] run tag @a[team=Green] remove Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] run tag @s add Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,tag=Ready,scores={readyup=903281}] run say TODO: Green ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=903281}] run scoreboard players set $GreenReady CmdData 1

execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] run tag @a[team=Red] remove Ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] run tag @s add Ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,tag=Ready,scores={readyup=903281}] run say TODO: Red ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=903281}] run scoreboard players set $RedReady CmdData 1

#> Unready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=315315}] run tag @a[team=Green] remove Ready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=315315}] run tag @s add Ready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,tag=Ready,scores={readyup=315315}] run say TODO: Green not ready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=315315}] run scoreboard players set $GreenReady CmdData 1

execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=315315}] run tag @a[team=Red] remove Ready
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=315315}] run tag @s add Ready
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,tag=Ready,scores={readyup=315315}] run say TODO: Red not ready
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=315315}] run scoreboard players set $RedReady CmdData 1


#> Reset invalid trigger score
execute as @a unless score @s readyup matches 0 run scoreboard players reset @s readyup
scoreboard players reset @a[team=!Green,team=!Red] readyup
tag @a[team=!Green,team=!Red] remove Ready

#> Start countdown
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.8
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run say TODO: Countdown started
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players set $Countdown CmdData 10
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players set $CountSec CmdData 0
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players reset @a readyup
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players set $gamestate CmdData 1