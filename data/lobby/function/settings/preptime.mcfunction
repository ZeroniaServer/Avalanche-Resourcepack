execute if score $PrepSeconds CmdData matches 60 run data modify storage lobby:customizer preptime set value 60
execute if score $PrepSeconds CmdData matches 60 run scoreboard players set $PrepSeconds CmdData 42069
execute if score $PrepSeconds CmdData matches 30 run data modify storage lobby:customizer preptime set value 60
execute if score $PrepSeconds CmdData matches 30 run scoreboard players set $PrepSeconds CmdData 60
execute if score $PrepSeconds CmdData matches 20 run data modify storage lobby:customizer preptime set value 30
execute if score $PrepSeconds CmdData matches 20 run scoreboard players set $PrepSeconds CmdData 30
execute if score $PrepSeconds CmdData matches 42069 run data modify storage lobby:customizer preptime set value 20
execute if score $PrepSeconds CmdData matches 42069 run scoreboard players set $PrepSeconds CmdData 20

function lobby:settings/refreshsigns with storage lobby:customizer

playsound block.wooden_button.click_on master @a -62 54 -93 1 1.6