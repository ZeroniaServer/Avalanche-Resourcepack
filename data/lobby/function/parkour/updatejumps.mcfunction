scoreboard players operation _global parkourJumps += @s parkourJumps
scoreboard players reset @s parkourJumps
execute store result storage lobby:parkour jumps int 1 run scoreboard players get _global parkourJumps
function lobby:parkour/updatedisplay with storage lobby:parkour