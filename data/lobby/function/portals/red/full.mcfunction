# Midgame joining
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinred matches 1.. run title @s actionbar ["",{"translate":"lobby.try_join.watch_game","color":"gray","bold":false}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinred matches 1.. run title @s times 0 30 5
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinred matches 1.. run tag @s add tryJoinRed

execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. if score @s joinred matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.in_progress","color":"red","bold":true}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. if score @s joinred matches 1.. run tellraw @s ["",{"translate":"lobby.try_join.watch_game","color":"gray","italic":true}]

execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. run return fail

# Actual team full
execute unless score @s joinred matches 1.. unless score $InGreen CmdData >= $MaxTeamSize CmdData run title @s actionbar ["",{"translate":"lobby.try_join","color":"aqua","bold":false,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true},{"translate":"lobby.try_join.team","color":"aqua","bold":false}]}]
execute unless score @s joinred matches 1.. if score $InGreen CmdData >= $MaxTeamSize CmdData run title @s actionbar ["",{"translate":"lobby.try_join.watch_game","color":"gray","bold":false}]
execute unless score @s joinred matches 1.. run title @s times 0 30 5
execute unless score @s joinred matches 1.. run tag @s add tryJoinRed

execute if score @s joinred matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.try_join.full","color":"red","bold":true}]
execute if score @s joinred matches 1.. unless score $InGreen CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{"translate":"lobby.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true,"italic":true},{"translate":"lobby.try_join.team","color":"dark_aqua","italic":true}]}]
execute if score @s joinred matches 1.. if score $InGreen CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{"translate":"lobby.try_join.watch_game","color":"gray","italic":true}]