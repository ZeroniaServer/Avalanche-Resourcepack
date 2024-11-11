execute store result score c vehicle.dx run data get storage cw_wasd Motion[0] 10000.0
execute store result score c vehicle.dz run data get storage cw_wasd Motion[2] 10000.0

scoreboard players operation c vehicle.dx /= .damper vehicle
scoreboard players operation c vehicle.dz /= .damper vehicle
scoreboard players operation @s vehicle.dx += c vehicle.dx
scoreboard players operation @s vehicle.dz += c vehicle.dz

# normalize
scoreboard players operation #magnitude vehicle = @s vehicle.dx
scoreboard players operation #magnitude vehicle *= #magnitude vehicle
scoreboard players operation #magnitude vehicle.dz = @s vehicle.dz
scoreboard players operation #magnitude vehicle.dz *= #magnitude vehicle.dz
scoreboard players operation #magnitude vehicle += #magnitude vehicle.dz
scoreboard players operation $math.isqrt.x bs.in = #magnitude vehicle
function #bs.math:isqrt
execute if score #sprint vehicle matches 1 run scoreboard players set #max vehicle 600
execute unless score #sprint vehicle matches 1 run scoreboard players set #max vehicle 400
execute if score $math.isqrt bs.out > #max vehicle run function powerups:sleigh/normalize

scoreboard players operation @s vehicle.rot = .rot vehicle