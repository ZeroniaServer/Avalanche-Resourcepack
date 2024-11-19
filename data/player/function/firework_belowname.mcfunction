execute store result storage game:data player_fireworks int 1 run scoreboard players get @s fireworkCount
execute if score @s fireworkCount matches ..0 run data modify storage game:data color set value 'gray'
execute if score @s fireworkCount matches 1..3 run data modify storage game:data color set value '#02d922'
execute if score @s fireworkCount matches 4..6 run data modify storage game:data color set value 'yellow'
execute if score @s fireworkCount matches 7.. run data modify storage game:data color set value '#FF0000'

scoreboard players operation #health playerHP = @s playerHP
execute if score #health playerHP matches ..0 run scoreboard players set #health playerHP 0
scoreboard players operation #healthdec playerHP = #health playerHP
scoreboard players operation #healthdec playerHP %= 2 const
execute store result storage game:data health int 0.5 run scoreboard players get #health playerHP
execute if score #healthdec playerHP matches 1 run data modify storage game:data healthdec set value ".5"
execute if score #healthdec playerHP matches 0 run data modify storage game:data healthdec set value ""
execute if score #health playerHP matches 1.. run data modify storage game:data healthcolor set value 'white'
execute if score #health playerHP matches 1.. run data modify storage game:data healthicon set value '\\uE010'
execute if score #health playerHP matches 0 run data modify storage game:data healthcolor set value 'gray'
execute if score #health playerHP matches 0 run data modify storage game:data healthicon set value '\\uE011'
function player:set_belowname with storage game:data