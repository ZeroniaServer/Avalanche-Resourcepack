# check if occupied
scoreboard players set $occupied CmdData 0
tag @s[tag=Occupied] remove Occupied
execute on passengers on passengers if entity @s[type=player] run scoreboard players set $occupied CmdData 1
execute if score $occupied CmdData matches 1 run tag @s add Occupied

execute at @s[tag=!SleighOffGround,predicate=!gameplay:in_air] on passengers on passengers if predicate wasd:jump on vehicle on vehicle run tag @s add SleighJumpBig

execute at @s[tag=Occupied,tag=!SleighOffGround] unless predicate gameplay:on_ground if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

execute at @s[tag=SleighJumpBig] run function powerups:sleigh/jumpbig

# expire if occupied -- TODO remove?
scoreboard players add @s[tag=!Occupied] CmdData 1
execute at @s[scores={CmdData=950..}] run function powerups:sleigh/break