place template avalanche:ice_wall_top_air -75 65 -262 none
place template avalanche:ice_wall_bottom_air -75 17 -262 none

place template avalanche:ice_wall_top_air -51 65 -180 180
place template avalanche:ice_wall_bottom_air -51 17 -180 180

execute as @e[type=item_display,tag=barricade] at @s run setblock ~ ~100 ~ target

setblock -57 16 -204 air
setblock -69 16 -238 air
setblock -59 38 -263 air
setblock -67 38 -179 air

scoreboard players set $wallplaced CmdData 0