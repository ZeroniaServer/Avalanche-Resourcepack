scoreboard players add @e[type=item_display,tag=CoalStockItemDisplay] CmdData 1
execute as @e[type=item_display,tag=CoalStockItemDisplay,scores={CmdData=2}] at @s run function powerups:coalstock/random_direction
execute as @e[type=item_display,tag=CoalStockItemDisplay,scores={CmdData=4}] at @s run data merge entity @s {interpolation_duration:6,transformation:{scale:[0.0f,0.0f,0.0f]}}
kill @e[type=item_display,tag=CoalStockItemDisplay,scores={CmdData=22..}]

scoreboard players add @a[tag=CoalBlind] coalblind 1
scoreboard players reset @a[tag=!CoalBlind,scores={coalblind=1..}] coalblind
execute as @a[tag=!Knockout,tag=CoalBlind,scores={coalblind=..60}] at @s run particle block_crumble{block_state:coal_block} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 2 force
execute as @a[tag=!Knockout,tag=CoalBlind,scores={coalblind=..60}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 3 force
tag @a[scores={coalblind=60..}] remove CoalBlind

scoreboard players add @e[type=marker,tag=CoalStockMarker] CmdData 1
execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=..1}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.2 0.2 0.1 5
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=..1}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0.2 0.2 0 0.1 5

execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=2..3}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.3 0.5 0.1 10
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=2..3}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0.5 0.3 0 0.1 10

execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=4..}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.4 0.7 0.1 20
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=4..}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0.7 0.4 0 0.1 20

execute as @e[type=marker,tag=CoalStockMarker,tag=x1] at @s run tp @s ~0.6 ~ ~
execute as @e[type=marker,tag=CoalStockMarker,tag=x2] at @s run tp @s ~-0.6 ~ ~
execute as @e[type=marker,tag=CoalStockMarker,tag=z1] at @s run tp @s ~ ~ ~0.6
execute as @e[type=marker,tag=CoalStockMarker,tag=z2] at @s run tp @s ~ ~ ~-0.6

scoreboard players add @e[type=marker,tag=CoalStockMarker] CmdData 1

execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=..1}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.2 0.2 0.1 5
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=..1}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0.2 0.2 0 0.1 5

execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=2..3}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.3 0.7 0.1 10
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=2..3}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0.7 0.3 0 0.1 10

execute as @e[type=marker,tag=CoalStockMarker,tag=x,scores={CmdData=4..}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 0 0.4 1 0.1 20
execute as @e[type=marker,tag=CoalStockMarker,tag=z,scores={CmdData=4..}] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~ ~ 1 0.4 0 0.1 20

execute as @e[type=marker,tag=CoalStockMarker,tag=x1] at @s run tp @s ~0.6 ~ ~
execute as @e[type=marker,tag=CoalStockMarker,tag=x2] at @s run tp @s ~-0.6 ~ ~
execute as @e[type=marker,tag=CoalStockMarker,tag=z1] at @s run tp @s ~ ~ ~0.6
execute as @e[type=marker,tag=CoalStockMarker,tag=z2] at @s run tp @s ~ ~ ~-0.6

kill @e[type=marker,tag=CoalStockMarker,scores={CmdData=5..}]