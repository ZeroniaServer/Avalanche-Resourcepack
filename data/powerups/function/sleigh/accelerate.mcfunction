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
execute if score #sprint vehicle matches 1 run scoreboard players set #max vehicle 500
execute unless score #sprint vehicle matches 1 run scoreboard players set #max vehicle 350

# slow down under blizzards
tag @s add sleighself
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 if entity @e[type=turtle,tag=sleighself,dx=6,dy=6,dz=6,limit=1] run scoreboard players set #max vehicle 200
tag @s remove sleighself

# slow down while throwing
execute if entity @s[tag=slowThrow] run scoreboard players operation #max vehicle /= 2 const
tag @s remove slowThrow

# slow down while drinking
execute if entity @s[tag=DrinkChoco] run scoreboard players operation #max vehicle /= 2 const

execute if score $math.isqrt bs.out > #max vehicle run function powerups:sleigh/normalize

execute if score .rot vehicle matches -2147483648..2147483647 run scoreboard players operation @s vehicle.rot = .rot vehicle