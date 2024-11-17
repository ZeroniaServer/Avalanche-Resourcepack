execute store result storage game:data player_fireworks int 1 run scoreboard players get @s fireworkCount
execute if score @s fireworkCount matches ..0 run data modify storage game:data color set value 'gray'
execute if score @s fireworkCount matches 1..3 run data modify storage game:data color set value '#02d922'
execute if score @s fireworkCount matches 4..6 run data modify storage game:data color set value 'yellow'
execute if score @s fireworkCount matches 7.. run data modify storage game:data color set value '#FF0000'
function player:set_belowname with storage game:data