tag @s remove inParkour
tag @s remove resettimeonce
function lobby:parkour/updatejumps
tellraw @s {translate:"parkour.canceled",color:"red",bold:true}
clear @s carrot_on_a_stick
# function lobby:items
execute at @s run playsound parkourcancel master @s ~ ~ ~ 1 1.2
execute at @s run playsound parkourcancel master @s ~ ~ ~ 1 0.8
title @s actionbar {text:""}
tag @s remove CancelParkour