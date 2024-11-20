execute if score $Barricades CmdData matches 240 run data modify storage lobby:customizer barricades set value 60
execute if score $Barricades CmdData matches 240 run scoreboard players set $Barricades CmdData 42069
execute if score $Barricades CmdData matches 180 run data modify storage lobby:customizer barricades set value 240
execute if score $Barricades CmdData matches 180 run scoreboard players set $Barricades CmdData 240
execute if score $Barricades CmdData matches 120 run data modify storage lobby:customizer barricades set value 180
execute if score $Barricades CmdData matches 120 run scoreboard players set $Barricades CmdData 180
execute if score $Barricades CmdData matches 60 run data modify storage lobby:customizer barricades set value 120
execute if score $Barricades CmdData matches 60 run scoreboard players set $Barricades CmdData 120
execute if score $Barricades CmdData matches 42069 run data modify storage lobby:customizer barricades set value 60
execute if score $Barricades CmdData matches 42069 run scoreboard players set $Barricades CmdData 60

function lobby:settings/refreshsigns with storage lobby:customizer

playsound block.wooden_button.click_on master @a -63 54 -93 1 1.6