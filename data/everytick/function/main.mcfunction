#> Bossbars
function bossbars:loop

#> Weapons
function powerups:loop

#> Player logic
function player:health
function player:knockout
execute as @a[predicate=gameplay:void] run function player:voiddeath
function player:base_campfires

#> Game logic
function gameplay:avalanche/loop

#> EntityID
execute if score #loaded entityid matches 1 run function entityid:real_tick

#> Store player UUIDs
execute as @a unless score @s UUIDscore matches -2147483648..2147483647 store result score @s UUIDscore run data get entity @s UUID[0]

#> Effects
effect give @a[predicate=!powerups:hold_icicle] weakness infinite 100 true
effect clear @a[predicate=powerups:hold_icicle] weakness
effect give @a saturation infinite 100 true
effect give @a night_vision infinite 100 true
effect give @a instant_health infinite 100 true
effect give @a fire_resistance infinite 100 true

#> No Drop
execute as @e[type=item] at @s if items entity @s contents *[custom_data~{NoDrop:1b}] run function everytick:nodrop

#> AJ tick
function animated_java:global/on_tick