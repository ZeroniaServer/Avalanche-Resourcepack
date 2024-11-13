summon block_display ~ ~ ~ {Tags:["AvalancheEntity","SecondarySnowBlockDisplay","New"],brightness:{sky:15,block:5},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:powder_snow"}}
execute as @e[type=block_display,tag=New,tag=SecondarySnowBlockDisplay] at @s run rotate @s 45 ~
execute store result storage avalanche:snow x2 int 1 run random value -10..10
execute store result storage avalanche:snow y2 int 1 run random value -6..-3
execute store result storage avalanche:snow rotation2 int 1 run random value 0..359
execute store result storage avalanche:snow rotation_tp2 int 1 run random value 10..45
execute store result storage avalanche:snow duration2 int 1 run random value 7..15