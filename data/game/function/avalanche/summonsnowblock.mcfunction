summon block_display ~ ~-4 ~ {Tags:["AvalancheEntity","SnowBlockDisplay","New"],brightness:{sky:15,block:5},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},block_state:{Name:"minecraft:powder_snow"}}
execute as @e[type=block_display,tag=New,tag=SnowBlockDisplay] at @s run rotate @s 45 ~
execute store result storage avalanche:snow x int 1 run random value 20..34
execute store result storage avalanche:snow y int 1 run random value -16..-10
execute store result storage avalanche:snow rotation int 1 run random value 0..359
execute store result storage avalanche:snow rotation_tp int 1 run random value -45..45
execute store result storage avalanche:snow duration int 1 run random value 10..15