scoreboard players add $End CmdData 1
execute if score $End CmdData matches 1 if score $GreenPoints CmdData > $RedPoints CmdData run scoreboard players set $Winner CmdData 1
execute if score $End CmdData matches 1 if score $RedPoints CmdData > $GreenPoints CmdData run scoreboard players set $Winner CmdData 2
execute if score $End CmdData matches 1 if score $GreenPoints CmdData = $RedPoints CmdData run scoreboard players set $Winner CmdData 0
execute if score $End CmdData matches 1 run scoreboard players set $gamestate CmdData 4
execute if score $End CmdData matches 1 run scoreboard players set $ticks CmdData 0
execute if score $End CmdData matches 1 run function game:timer

#> Green wins
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=Green] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=Red] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 as @a[team=!Green,team=!Red] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a title {"translate":"game.end.win_green","color":"green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=Green] subtitle {"translate":"game.end.wellplayed","color":"dark_green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=Red] subtitle {"translate":"game.end.betterluck","color":"dark_red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 1 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

#> Red wins
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=Red] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=Green] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 as @a[team=!Green,team=!Red] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a title {"translate":"game.end.win_red","color":"red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=Red] subtitle {"translate":"game.end.wellplayed","color":"dark_green"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=Green] subtitle {"translate":"game.end.betterluck","color":"dark_red"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 2 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

#> Tie
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=Green] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 0
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=Red] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 0
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 as @a[team=!Green,team=!Red] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a title {"translate":"game.end.tie","color":"gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=Red] subtitle {"translate":"game.end.betterluck","color":"dark_gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=Green] subtitle {"translate":"game.end.betterluck","color":"dark_gray"}
execute if score $End CmdData matches 1 if score $Winner CmdData matches 0 run title @a[team=!Green,team=!Red] subtitle {"text":" "}

execute if score $End CmdData matches 200.. run function game:forcestop