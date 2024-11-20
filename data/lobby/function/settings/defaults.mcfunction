scoreboard players set $Minutes CmdData 10
scoreboard players set $PrepSeconds CmdData 30
scoreboard players set $Barricades CmdData 120

data modify storage lobby:customizer time set value 10
data modify storage lobby:customizer preptime set value 30
data modify storage lobby:customizer barricades set value 120

function lobby:settings/refreshsigns with storage lobby:customizer

playsound minecraft:block.chiseled_bookshelf.insert.enchanted master @a -62 53 -93 1 1