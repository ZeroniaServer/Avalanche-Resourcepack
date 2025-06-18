scoreboard players add #bothflicker CmdData 1
execute if score #bothflicker CmdData matches 1 if score $greenflicker CmdData <= $redflicker CmdData run data modify storage game:data mountain set value {text:"\uE00B",color:"#a8a000"}
execute if score #bothflicker CmdData matches 1 if score $redflicker CmdData < $greenflicker CmdData run data modify storage game:data mountain set value {text:"\uE00C",color:"#a8a000"}
execute if score #bothflicker CmdData matches 1 run function bossbars:get_points
execute if score #bothflicker CmdData matches 5 run function game:avalanche/alternatefont
execute if score #bothflicker CmdData matches 5 run function bossbars:get_points
execute if score #bothflicker CmdData matches 8.. run scoreboard players set #bothflicker CmdData 4