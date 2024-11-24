execute at @s run playsound entity.item.break master @s ~ ~ ~ 1 0

# Midgame joining
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.in_progress","color":"red","bold":true}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. run tellraw @s ["",{"translate":"lobby.try_join.watch_game","color":"gray","italic":true}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinred matches 1.. run tag @s add tryJoinRed
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. run return fail

# Actual team full
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.try_join.full","color":"red","bold":true}]
execute unless score $InGreen CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{"translate":"lobby.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true,"italic":true},{"translate":"lobby.try_join.team","color":"dark_aqua","italic":true}]}]
execute if score $InGreen CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{"translate":"lobby.try_join.watch_game","color":"gray","italic":true}]
execute unless score @s joinred matches 1.. run tag @s add tryJoinRed