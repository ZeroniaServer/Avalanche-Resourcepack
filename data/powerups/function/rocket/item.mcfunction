scoreboard players add @s lifetime 1
execute if score @s lifetime matches 140 run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if score @s lifetime matches 140 run item modify entity @s contents [{"function":"minecraft:set_components","components":{"minecraft:item_model":"minecraft:weapons/rocket_unclaimed"}}]
execute if score @s lifetime matches 140.. run tag @s remove RocketItemGreen
execute if score @s lifetime matches 140.. run tag @s remove RocketItemRed
execute if score @s lifetime matches 140 run playsound rocketconvert master @a ~ ~ ~ 1 2

tag @a remove giveRocket
execute if entity @s[tag=RocketItemGreen] run tag @p[team=Green,tag=!Knockout,distance=..2] add giveRocket
execute if entity @s[tag=RocketItemRed] run tag @p[team=Red,tag=!Knockout,distance=..2] add giveRocket
execute if score @s lifetime matches 140.. run tag @p[team=!Spectator,team=!Lobby,tag=!Knockout,distance=..2] add giveRocket
data modify entity @s Owner set from entity @p[tag=giveRocket] UUID
data modify entity @s Thrower set from entity @p[tag=giveRocket] UUID
execute if entity @p[team=Green,tag=giveRocket] run item modify entity @s contents powerups:rocket_green
execute if entity @p[team=Red,tag=giveRocket] run item modify entity @s contents powerups:rocket_red
execute if entity @p[tag=giveRocket] run tag @s remove RocketItem

#> Particles
execute at @s[tag=RocketItemGreen,tag=!RocketItemRed] run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.1 0.2 0.1 0.1 2 force @a[team=!Red]
execute at @s[tag=RocketItemRed,tag=!RocketItemGreen] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.1 0.2 0.1 0.1 2 force @a[team=!Green]

execute at @s[tag=!RocketItemGreen,tag=!RocketItemRed] run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,1.000,0.000],scale:1} ~ ~0.5 ~ 0.1 0.2 0.1 0.1 1 force @a[team=!Lobby]

#> Rocket items void
scoreboard players add @s[tag=Voided] CmdData 1
execute at @s[tag=Voided,scores={CmdData=..2}] run particle firework ~ ~ ~ 0 0 0 .02 1 force
execute at @s[tag=Voided,scores={CmdData=2}] run particle firework ~ ~ ~ 0 0 0 .2 6 force
execute at @s[tag=Voided,scores={CmdData=2}] run playsound rocketvoid master @a ~ ~ ~ 0.3 2
tag @s[tag=Voided,scores={CmdData=2..}] remove Voided

#> High arena falling
scoreboard players add @s[tag=higharena,predicate=!game:high_arena] CmdData 1
data merge entity @s[tag=higharena,predicate=!game:high_arena,scores={CmdData=1}] {NoGravity:1b}
data modify entity @s[tag=higharena,predicate=!game:high_arena,scores={CmdData=1}] Motion[1] set value -0.03
data modify entity @s[tag=higharena,predicate=!game:high_arena,scores={CmdData=20}] Motion[1] set value 0
tag @s[tag=higharena,predicate=!game:high_arena,scores={CmdData=20..}] remove higharena

#> Low arena floating
execute at @s if predicate {condition:"location_check",predicate:{position:{y:{max:40}}}} positioned over motion_blocking if predicate {condition:"location_check",predicate:{position:{y:{max:-64}}}} run data modify entity @s Motion[1] set value 0.05
execute at @s positioned over motion_blocking if predicate {condition:"location_check",predicate:{position:{y:{max:-64}}}} at @s unless predicate {condition:"location_check",predicate:{position:{y:{max:42}}}} run data modify entity @s Motion[1] set value 0

function powerups:throwable_init/airtoggle