execute unless score #input math matches 1.. on passengers if entity @s[type=minecart] store result score .unrot vehicle run data get entity @s Rotation[0] 100
execute unless score #input math matches 1.. run scoreboard players operation @s vehicle.rot = .unrot vehicle
scoreboard players operation $math.sincos.x bs.in = @s vehicle.rot
execute if score $math.sincos.x bs.in matches ..-1 run scoreboard players add $math.sincos.x bs.in 36000
function #bs.math:sincos

scoreboard players operation .frictionz vehicle = @s vehicle.friction
scoreboard players operation .frictionz vehicle *= $math.sincos.cos bs.out
scoreboard players operation .frictionz vehicle /= #1000 constant
execute if score .frictionz vehicle matches ..-1 run scoreboard players operation .frictionz vehicle *= #-1 constant

scoreboard players operation .frictionx vehicle = @s vehicle.friction
scoreboard players operation .frictionx vehicle *= $math.sincos.sin bs.out
scoreboard players operation .frictionx vehicle /= #1000 constant
execute if score .frictionx vehicle matches ..-1 run scoreboard players operation .frictionx vehicle *= #-1 constant

scoreboard players operation #temp vehicle.dx = @s vehicle.dx
execute if score #temp vehicle.dx matches ..-1 run scoreboard players operation #temp vehicle.dx *= #-1 constant
execute if score #temp vehicle.dx < .frictionx vehicle run scoreboard players operation .frictionx vehicle = #temp vehicle.dx
scoreboard players operation #temp vehicle.dz = @s vehicle.dz
execute if score #temp vehicle.dz matches ..-1 run scoreboard players operation #temp vehicle.dz *= #-1 constant
execute if score #temp vehicle.dz < .frictionz vehicle run scoreboard players operation .frictionz vehicle = #temp vehicle.dz

execute if score .frictionx vehicle matches 0 run scoreboard players add .frictionx vehicle 1
execute if score .frictionz vehicle matches 0 run scoreboard players add .frictionz vehicle 1

execute if score @s vehicle.dx matches ..-1 run scoreboard players operation @s vehicle.dx += .frictionx vehicle
execute if score @s vehicle.dx matches 1.. run scoreboard players operation @s vehicle.dx -= .frictionx vehicle
execute if score @s vehicle.dz matches ..-1 run scoreboard players operation @s vehicle.dz += .frictionz vehicle
execute if score @s vehicle.dz matches 1.. run scoreboard players operation @s vehicle.dz -= .frictionz vehicle