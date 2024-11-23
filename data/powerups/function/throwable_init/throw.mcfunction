#> Save player UUID for arrow owner
#TODO there's more performance efficient ways to get cached UUID without serializing all player NBT but this is fine for now
data modify storage avalanche:snowball UUID set from entity @s UUID
tag @s add self
execute as @e[type=snowball,tag=!HasType] store success score @s CmdData on origin if entity @s[tag=self]
tag @e[type=snowball,scores={CmdData=1}] add owned

#> Resync firework rocket count
execute store result score @s fireworkCount run clear @s snowball[custom_data~{Rocket:1b}] 0

#> Spawn arrows in snowballs
execute as @e[type=snowball,tag=owned] at @s run function powerups:throwable_init/owned

#> Detect snowballs with arrows, add "type" to its passenger
execute as @e[type=snowball,tag=owned,tag=HasPassenger,tag=!HasType] on passengers on vehicle run function powerups:throwable_init/set_type

#> Reset scores
scoreboard players reset @s throwsb
tag @s remove self