execute if score $PrepSeconds CmdData matches 120.. run scoreboard players set $PrepSeconds CmdData 0
execute if score $PrepSeconds CmdData matches 60 run scoreboard players set $PrepSeconds CmdData 120
execute if score $PrepSeconds CmdData matches 30 run scoreboard players set $PrepSeconds CmdData 60
execute if score $PrepSeconds CmdData matches 0 run scoreboard players set $PrepSeconds CmdData 30