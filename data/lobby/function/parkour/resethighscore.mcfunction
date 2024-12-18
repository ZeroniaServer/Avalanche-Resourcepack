tag @a remove firstParkour
scoreboard players reset * bestParkourMins
scoreboard players reset * bestParkourSecs
scoreboard players reset * bestParkourDeci
scoreboard players reset * bestParkourDeci2
scoreboard players reset * bestParkourTime
scoreboard players set #current bestParkourTime 2000000000

item replace entity @e[type=armor_stand,tag=parkour_display] armor.head with player_head[profile={name:"MHF_Question"}]

data modify storage lobby:parkour name set value "???"
data modify storage lobby:parkour time set value "???"
scoreboard players set _global parkourJumps 0
function lobby:parkour/updatedisplay