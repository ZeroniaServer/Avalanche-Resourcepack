# Detect when the player is looking at a block that is within reach
execute store result score $max_distance CmdData run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance CmdData run function iris:get_target
execute if data storage iris:output {TargetType: "BLOCK"} if score $distance CmdData <= $max_distance CmdData at @e[type=minecraft:marker,tag=iris.targeted_block] unless block ~ ~ ~ target run return fail
execute unless data storage iris:output {TargetType: "BLOCK"} run return fail
execute if data storage iris:output {TargetType: "BLOCK"} unless score $distance CmdData <= $max_distance CmdData run return fail

# Teleport the player where they are looking
summon marker ~ ~ ~ {Tags:["raymarker"]}
execute as @e[type=marker,tag=raymarker,limit=1] run function iris:set_coordinates/main
# execute as @e[type=marker,tag=raymarker,limit=1] at @s run particle block_marker{block_state:"red_concrete"} ~ ~ ~
execute at @e[type=minecraft:marker,tag=iris.targeted_block] if entity @e[type=marker,tag=raymarker,limit=1,distance=..0.6] run tag @s add survival
kill @e[type=marker,tag=raymarker,limit=1]