execute if items entity @s contents clay[custom_data~{MineBarricade:1b}] run tag @s add mineBarricade
execute if items entity @s contents clay[custom_data~{MineBarricade:1b}] run return run item modify entity @s contents {"function":"set_components","components":{"custom_data":"{NoDrop:1b,Blank:1b}"}}

data modify entity @s[tag=!processed] Owner set from entity @s Thrower
data merge entity @s {NoGravity:1b}
data merge entity @s[tag=!processed,tag=!IsSleighItem] {PickupDelay:0s}
execute store result score @s[tag=!processed] UUIDscore run data get entity @s Thrower[0]
scoreboard players operation $tempuuid UUIDscore = @s UUIDscore
execute if entity @s[tag=processed] unless entity @a[team=!Spectator,gamemode=!spectator,predicate=player:matches_uuid] run kill @s
execute if entity @a[team=!Spectator,predicate=player:matches_uuid] at @a[team=!Spectator,predicate=player:matches_uuid,limit=1] run tp @s[tag=!IsSleighItem] ~ ~-0.5 ~
execute if entity @a[team=!Spectator,predicate=player:matches_uuid] at @s run tp @s @s
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData

execute on origin store success score $fullcheck CmdData if entity @s[team=Lobby,tag=fullinv]
execute if score $fullcheck CmdData matches 1 run scoreboard players add @s lifetime 1
execute unless score $fullcheck CmdData matches 1 run scoreboard players reset @s lifetime
kill @s[scores={lifetime=3..}]

scoreboard players reset $tempuuid UUIDscore
tag @s[tag=!processed] add processed