scoreboard players add @s blizzardtime 1
execute if score @s blizzardtime matches 1 store result storage snowglobe:blizzard x int 1 run random value 0..45
execute if score @s blizzardtime matches 1 store result storage snowglobe:blizzard y int 1 run random value 0..45
execute if score @s blizzardtime matches 1 store result storage snowglobe:blizzard z int 1 run random value 0..45
execute if score @s blizzardtime matches 1 run function powerups:snowglobe/start_wobble with storage snowglobe:blizzard
execute if score @s blizzardtime matches 6 run data merge entity @s {interpolation_duration:35,start_interpolation:0,transformation:{scale:[2.0f,2.0f,2.0f]}}
execute if score @s blizzardtime matches 16.. run scoreboard players reset @s blizzardtime