function powerups:loop

bossbar set bar_lobby style notched_20
bossbar set bar_lobby name {"translate":"lobby.ending","color":"red"}

scoreboard players add $End CmdData 1
execute if score $End CmdData matches 1 if score $GreenPoints CmdData > $RedPoints CmdData run scoreboard players set $Winner CmdData 1
execute if score $End CmdData matches 1 if score $RedPoints CmdData > $GreenPoints CmdData run scoreboard players set $Winner CmdData 2
execute if score $End CmdData matches 1 if score $GreenPoints CmdData = $RedPoints CmdData run scoreboard players set $Winner CmdData 0
execute if score $End CmdData matches 1 run scoreboard players remove @a[team=Red,scores={GamesPlayed=1..}] GamesPlayed 1
execute if score $End CmdData matches 1 run scoreboard players remove @a[team=Green,scores={GamesPlayed=1..}] GamesPlayed 1
execute if score $End CmdData matches 1 run scoreboard players set $gamestate CmdData 4
execute if score $End CmdData matches 1 run scoreboard players set $ticks CmdData 0
execute if score $End CmdData matches 1 run function game:timer
execute if score $End CmdData matches 1 run function game:mvpstats/check

#> Green wins
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=Green] at @s run playsound wingame master @s ~ ~ ~ 1 1.2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=Red] at @s run playsound losegame master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=!Green,team=!Red] at @s run playsound endgame master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a times 10 70 20
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a title {"translate":"game.end.win.green","color":"green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=Green] subtitle {"translate":"game.end.wellplayed","color":"dark_green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=Red] subtitle {"translate":"game.end.betterluck","color":"dark_red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

#> Red wins
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=Red] at @s run playsound wingame master @s ~ ~ ~ 1 1.2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=Green] at @s run playsound losegame master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=!Green,team=!Red] at @s run playsound endgame master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a title {"translate":"game.end.win.red","color":"red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=Red] subtitle {"translate":"game.end.wellplayed","color":"dark_green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=Green] subtitle {"translate":"game.end.betterluck","color":"dark_red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

#> Tie
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=Green] at @s run playsound tiegame master @s ~ ~ ~ 1 0
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=Red] at @s run playsound tiegame master @s ~ ~ ~ 1 0
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=!Green,team=!Red] at @s run playsound endgame master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a title {"translate":"game.end.tie","color":"gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=Red] subtitle {"translate":"game.end.betterluck","color":"dark_gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=Green] subtitle {"translate":"game.end.betterluck","color":"dark_gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

execute if score $End CmdData matches 150 as @a[team=Red,gamemode=adventure] run gamemode spectator @s
execute if score $End CmdData matches 150 as @a[team=Green,gamemode=adventure] run gamemode spectator @s

execute if score $End CmdData matches 250.. run function game:forcestop