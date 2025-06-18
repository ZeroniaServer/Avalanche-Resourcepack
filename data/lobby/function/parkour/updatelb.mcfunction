##Updates parkour leaderboard with new player/time
tag @s[tag=finishedParkour] add templeader
execute store result score #current bestParkourTime run scoreboard players get @s finalParkourTime

setblock 0 0 0 oak_sign
data modify block 0 0 0 front_text.messages[0] set value [{selector:"@a[limit=1,tag=templeader]",color:"yellow"}]
data modify storage lobby:parkour name set from block 0 0 0 front_text.messages[0]

execute if entity @s[scores={parkourSecs=..9,parkourMins=..9}] run data modify block 0 0 0 front_text.messages[1] set value ["",{text:"0",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourMins"},color:"green"},{text:":0",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourSecs"},color:"green"},{text:".",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci"},color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci2"},color:"green"}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=..9}] run data modify block 0 0 0 front_text.messages[1] set value ["",{text:"0",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourMins"},color:"green"},{text:":",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourSecs"},color:"green"},{text:".",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci"},color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci2"},color:"green"}]
execute if entity @s[scores={parkourSecs=..9,parkourMins=10..}] run data modify block 0 0 0 front_text.messages[1] set value ["",{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourMins"},color:"green"},{text:":0",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourSecs"},color:"green"},{text:".",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci"},color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci2"},color:"green"}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=10..}] run data modify block 0 0 0 front_text.messages[1] set value ["",{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourMins"},color:"green"},{text:":",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourSecs"},color:"green"},{text:".",color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci"},color:"green"},{score:{name:"@a[limit=1,tag=templeader]",objective:"parkourDeci2"},color:"green"}]

data modify storage lobby:parkour time set from block 0 0 0 front_text.messages[1]
setblock 0 0 0 air

loot replace entity @e[type=armor_stand,tag=parkour_display,limit=1] armor.head 1 loot lobby:playerhead
function lobby:parkour/updatedisplay

execute if entity @s[tag=templeader] run tellraw @a[team=!Purple,team=!Orange] ["",{translate:"parkour.new_record",color:"dark_green",with:[{selector:"@s"}]}]

tag @s remove templeader