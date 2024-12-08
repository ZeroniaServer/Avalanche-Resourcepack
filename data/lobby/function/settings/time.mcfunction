execute if score $Minutes CmdData matches 30 run data modify storage lobby:customizer time set value 30
execute if score $Minutes CmdData matches 30 run scoreboard players set $Minutes CmdData 42069
execute if score $Minutes CmdData matches 20 run data modify storage lobby:customizer time set value 30
execute if score $Minutes CmdData matches 20 run scoreboard players set $Minutes CmdData 30
execute if score $Minutes CmdData matches 15 run data modify storage lobby:customizer time set value 20
execute if score $Minutes CmdData matches 15 run scoreboard players set $Minutes CmdData 20
execute if score $Minutes CmdData matches 10 run data modify storage lobby:customizer time set value 15
execute if score $Minutes CmdData matches 10 run scoreboard players set $Minutes CmdData 15
execute if score $Minutes CmdData matches 5 run data modify storage lobby:customizer time set value 10
execute if score $Minutes CmdData matches 5 run scoreboard players set $Minutes CmdData 10
execute if score $Minutes CmdData matches 42069 run data modify storage lobby:customizer time set value 5
execute if score $Minutes CmdData matches 42069 run scoreboard players set $Minutes CmdData 5

function lobby:settings/refreshsigns with storage lobby:customizer

playsound settingsclick master @a -56 54 -89 1 1.6