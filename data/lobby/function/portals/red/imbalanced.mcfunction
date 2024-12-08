execute at @s run playsound joinfail master @s ~ ~ ~ 1 0
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.try_join.imbalanced","color":"red","bold":true}]
tellraw @s ["",{"translate":"lobby.try_join","color":"aqua","bold":false,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true},{"translate":"lobby.try_join.team","color":"aqua","bold":false}]}]
execute unless score @s joinred matches 1.. run tag @s add tryJoinRed