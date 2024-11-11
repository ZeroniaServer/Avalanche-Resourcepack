#> Throwable detection
function powerups:throwable_init/loop

#> Trails
execute as @e[type=arrow,tag=Iceball] at @s run function powerups:iceball/trail
execute as @e[type=arrow,tag=Coalstock] at @s run function powerups:coalstock/trail

#> Snowballs
function powerups:snowball/reload

#> Iceballs
function powerups:iceball/main

#> Sleigh
function powerups:sleigh/main

#> Rockets
function powerups:rocket/main

#> Snowman
function powerups:snowman/main

#> Snowglobe
function powerups:snowglobe/main

#> Hot Chocolate
function powerups:hotchoco/main

#> Campfire
function powerups:campfire/main

#> Icicle
function powerups:icicle/main

#> Barricade
function powerups:barricade/main

#> Giftbox spawning
function powerups:giftbox/animation