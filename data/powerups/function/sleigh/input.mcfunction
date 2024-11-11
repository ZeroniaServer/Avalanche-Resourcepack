#get player input
function wasd:mounted

scoreboard players operation #input math = .w wasd
scoreboard players operation #input math += .a wasd
scoreboard players operation #input math += .s wasd
scoreboard players operation #input math += .d wasd
execute if predicate wasd:jump run scoreboard players add #input math 1

scoreboard players set #sprint vehicle 0
execute if predicate wasd:sprint run scoreboard players set #sprint vehicle 1
execute if predicate wasd:sprint run attribute @s movement_speed modifier add sleigh:sprint 0.025 add_value 
execute unless predicate wasd:sprint run attribute @s movement_speed modifier remove sleigh:sprint

execute if score #input math matches 1.. unless score .s wasd matches 1 on vehicle on vehicle run function powerups:sleigh/accelerate
execute if score #input math matches 1.. if score .s wasd matches 1 on vehicle on vehicle unless predicate gameplay:in_air run function powerups:sleigh/brake

execute on vehicle rotated as @s on vehicle on passengers run rotate @s[type=item_display] ~ ~