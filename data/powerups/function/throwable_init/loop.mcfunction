#> Spawn arrows in snowballs
execute as @a[scores={throwsb=1..}] at @s run function powerups:throwable_init/throw

#> Set arrow motion to be the same as the Snowball
execute as @e[type=arrow,tag=ThrowableArrow] run function powerups:throwable_init/arrow_motion

execute as @e[type=snowball,tag=AirToggle] run function powerups:throwable_init/airtoggle

execute as @e[type=arrow] at @s if predicate game:green_base run tag @s add BasePrevention
execute as @e[type=arrow] at @s if predicate game:red_base run tag @s add BasePrevention
execute as @e[type=arrow] at @s if predicate game:green_base on passengers run tag @s add BasePrevention
execute as @e[type=arrow] at @s if predicate game:red_base on passengers run tag @s add BasePrevention
execute as @e[type=arrow] at @s if predicate game:green_base on vehicle run tag @s add BasePrevention
execute as @e[type=arrow] at @s if predicate game:red_base on vehicle run tag @s add BasePrevention