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
execute store result score @s hasCampfires run clear @s ghast_spawn_egg[custom_data~{Campfire:1b}] 0
execute store result score @s hasHotChocos run clear @s diamond_hoe[custom_data~{HotChoco:1b}] 0

execute if score @s playerHP matches ..19 unless score @s hasCampfires matches 1.. unless score @s hasHotChocos matches 1.. run scoreboard players add $hotchoco giftweight 3
execute if score @s playerHP matches ..10 unless score @s hasCampfires matches 1.. unless score @s hasHotChocos matches 1.. run scoreboard players add $hotchoco giftweight 9

execute if score @s playerHP matches ..19 unless score @s hasCampfires matches 1.. unless score @s hasHotChocos matches 1.. run scoreboard players add $campfire giftweight 2
execute if score @s playerHP matches ..10 unless score @s hasCampfires matches 1.. unless score @s hasHotChocos matches 1.. run scoreboard players add $campfire giftweight 7

#> Already have barricades? Decrease the chances.
execute store result score @s hasBarricades run clear @s clay 0
execute if score @s hasBarricades matches 1.. run scoreboard players set $barricade giftweight 1

#> Already have icicles? Decrease the chances.
execute store result score @s hasIcicles run clear @s elytra 0
execute if score @s hasIcicles matches 1.. run scoreboard players set $icicle giftweight 2

#> Already have a sleigh? Decrease the chances.
execute store result score @s hasSleighs run clear @s ghast_spawn_egg[custom_data~{Sleigh:1b}] 0
execute if score @s hasSleighs matches 1.. run scoreboard players set $sleigh giftweight 4

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