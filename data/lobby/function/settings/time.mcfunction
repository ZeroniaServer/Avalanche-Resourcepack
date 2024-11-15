execute if score $Minutes CmdData matches 30.. run scoreboard players set $Minutes CmdData 0
execute if score $Minutes CmdData matches 20 run scoreboard players set $Minutes CmdData 30
execute if score $Minutes CmdData matches 10 run scoreboard players set $Minutes CmdData 20
execute if score $Minutes CmdData matches 0 run scoreboard players set $Minutes CmdData 10