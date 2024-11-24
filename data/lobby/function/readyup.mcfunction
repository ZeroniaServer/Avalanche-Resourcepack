#> Enable readyup triggers
execute if score $gamestate CmdData matches 0 unless score $Countdown CmdData matches 0.. run scoreboard players enable @a[team=Green] readyup
execute if score $gamestate CmdData matches 0 unless score $Countdown CmdData matches 0.. run scoreboard players enable @a[team=Red] readyup
execute if score $gamestate CmdData matches 0 if score $Countdown CmdData matches 0.. as @a[team=Green] run trigger readyup set 0
execute if score $gamestate CmdData matches 0 if score $Countdown CmdData matches 0.. as @a[team=Red] run trigger readyup set 0
execute if score $gamestate CmdData matches 0 as @a[team=!Green,team=!Red] run trigger readyup set 0

#> Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] run tag @a[team=Green] remove Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] run tag @s add Ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,tag=Ready,scores={readyup=903281}] run say TODO: Green ready
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=903281}] if score $RedReady CmdData matches 0 run scoreboard players set $GreenReadyFirst CmdData 1
execute if score $GreenReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=903281}] run scoreboard players set $GreenReady CmdData 1

execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] run tag @a[team=Red] remove Ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] run tag @s add Ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,tag=Ready,scores={readyup=903281}] run say TODO: Red ready
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=903281}] if score $GreenReady CmdData matches 0 run scoreboard players set $RedReadyFirst CmdData 1
execute if score $RedReady CmdData matches 0 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=903281}] run scoreboard players set $RedReady CmdData 1

#> Unready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,limit=1,sort=random,scores={readyup=315315}] run tag @a[team=Green] remove Ready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,tag=Ready,scores={readyup=315315}] run say TODO: Green not ready
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=315315}] run scoreboard players set $GreenReady CmdData 0
execute if score $GreenReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Green,scores={readyup=315315}] run scoreboard players set $GreenReadyFirst CmdData 0

execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,limit=1,sort=random,scores={readyup=315315}] run tag @a[team=Red] remove Ready
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,tag=Ready,scores={readyup=315315}] run say TODO: Red not ready
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=315315}] run scoreboard players set $RedReady CmdData 0
execute if score $RedReady CmdData matches 1 if score $gamestate CmdData matches 0 as @a[team=Red,scores={readyup=315315}] run scoreboard players set $RedReadyFirst CmdData 0


#> Reset invalid trigger score
execute as @a unless score @s readyup matches 0 run scoreboard players reset @s readyup
scoreboard players reset @a[team=!Green,team=!Red] readyup
tag @a[team=!Green,team=!Red] remove Ready

#> Start countdown
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run bossbar set bar_lobby name {"translate":"lobby.countdown.beginning","color":"dark_aqua"}
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players set $precountdown CmdData 1
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players reset @a readyup
execute if score $gamestate CmdData matches 0 if entity @a[team=Green,tag=Ready] if entity @a[team=Red,tag=Ready] run scoreboard players set $gamestate CmdData 1

#> Ready bossbars
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_r players @a
execute if score $gamestate CmdData matches 0 run bossbar set bar_ready_g players @a
execute if score $RedReadyFirst CmdData matches 1 unless score $GreenReady CmdData matches 1 run bossbar set bar_ready_r value 1
execute if score $RedReadyFirst CmdData matches 1 if score $GreenReady CmdData matches 1 run bossbar set bar_ready_r value 2
execute if score $GreenReadyFirst CmdData matches 1 unless score $RedReady CmdData matches 1 run bossbar set bar_ready_g value 1
execute if score $GreenReadyFirst CmdData matches 1 if score $RedReady CmdData matches 1 run bossbar set bar_ready_g value 2
execute unless score $RedReady CmdData matches 1 run bossbar set bar_ready_r value 0
execute unless score $GreenReady CmdData matches 1 run bossbar set bar_ready_g value 0