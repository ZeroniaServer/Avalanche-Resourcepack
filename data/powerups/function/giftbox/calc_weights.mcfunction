scoreboard players set $iceball giftweight 10
scoreboard players set $snowman giftweight 10
scoreboard players set $snowglobe giftweight 10
scoreboard players set $campfire giftweight 10
scoreboard players set $hotchoco giftweight 10
scoreboard players set $icicle giftweight 10
scoreboard players set $coalstock giftweight 10
scoreboard players set $barricade giftweight 10
scoreboard players set $sleigh giftweight 10

#> Lower health and don't have healing powerups? Increase heal item chances.
execute if score @s playerHP matches ..19 unless items entity @s container.* ghast_spawn_egg[custom_model_data=4] unless items entity @s container.* ghast_spawn_egg[custom_model_data=5] unless items entity @s container.* diamond_hoe[custom_model_data=8] run scoreboard players add $hotchoco giftweight 2
execute if score @s playerHP matches ..10 unless items entity @s container.* ghast_spawn_egg[custom_model_data=4] unless items entity @s container.* ghast_spawn_egg[custom_model_data=5] unless items entity @s container.* diamond_hoe[custom_model_data=8] run scoreboard players add $hotchoco giftweight 5
execute if score @s playerHP matches ..19 unless items entity @s container.* ghast_spawn_egg[custom_model_data=4] unless items entity @s container.* ghast_spawn_egg[custom_model_data=5] unless items entity @s container.* diamond_hoe[custom_model_data=8] run scoreboard players add $campfire giftweight 1
execute if score @s playerHP matches ..10 unless items entity @s container.* ghast_spawn_egg[custom_model_data=4] unless items entity @s container.* ghast_spawn_egg[custom_model_data=5] unless items entity @s container.* diamond_hoe[custom_model_data=8] run scoreboard players add $campfire giftweight 3

#> Already have barricades? Decrease the chances. A lot.
execute if items entity @s container.* clay run scoreboard players set $barricade giftweight 1

#> Already have a sleigh? Decrease the chances.
execute if items entity @s container.* ghast_spawn_egg[custom_model_data=6] run scoreboard players set $sleigh giftweight 4

#> Store weights in storage
execute store result storage gift:weights iceball int 1 run scoreboard players get $iceball giftweight
execute store result storage gift:weights snowman int 1 run scoreboard players get $snowman giftweight
execute store result storage gift:weights snowglobe int 1 run scoreboard players get $snowglobe giftweight
execute store result storage gift:weights campfire int 1 run scoreboard players get $campfire giftweight
execute store result storage gift:weights hotchoco int 1 run scoreboard players get $hotchoco giftweight
execute store result storage gift:weights icicle int 1 run scoreboard players get $icicle giftweight
execute store result storage gift:weights barricade int 1 run scoreboard players get $barricade giftweight
execute store result storage gift:weights sleigh int 1 run scoreboard players get $sleigh giftweight
execute store result storage gift:weights coalstock int 1 run scoreboard players get $coalstock giftweight

#> Give a powerup
function powerups:giftbox/give_powerup with storage gift:weights