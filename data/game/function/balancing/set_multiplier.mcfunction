scoreboard players set $PlayersGreen CmdData 0
execute as @a[team=Green] run scoreboard players add $PlayersGreen CmdData 1

execute if score $PlayersGreen CmdData matches 0..1 run scoreboard players set $GreenMult CmdData 12
execute if score $PlayersGreen CmdData matches 2 run scoreboard players set $GreenMult CmdData 8
execute if score $PlayersGreen CmdData matches 3 run scoreboard players set $GreenMult CmdData 6
execute if score $PlayersGreen CmdData matches 4 run scoreboard players set $GreenMult CmdData 4
execute if score $PlayersGreen CmdData matches 5.. run scoreboard players set $GreenMult CmdData 3

scoreboard players set $PlayersRed CmdData 0
execute as @a[team=Red] run scoreboard players add $PlayersRed CmdData 1

execute if score $PlayersRed CmdData matches 0..1 run scoreboard players set $RedMult CmdData 12
execute if score $PlayersRed CmdData matches 2 run scoreboard players set $RedMult CmdData 8
execute if score $PlayersRed CmdData matches 3 run scoreboard players set $RedMult CmdData 6
execute if score $PlayersRed CmdData matches 4 run scoreboard players set $RedMult CmdData 4
execute if score $PlayersRed CmdData matches 5.. run scoreboard players set $RedMult CmdData 3