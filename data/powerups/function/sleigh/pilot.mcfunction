# run over snowmen in front
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^1 ^1.2 if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanrunover master @a ~ ~ ~ 1 0
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^1 ^1.2 if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanrunover master @a ~ ~ ~ 1 1.4
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^1 ^1.2 run scoreboard players set @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1] playerHP 0

# goomba stomp snowmen beneath
execute if score #bool math matches 0 if predicate game:in_air on passengers rotated as @s[type=minecart] at @s positioned ^ ^-1 ^ if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanstomp master @a ~ ~ ~ 1 0
execute if score #bool math matches 0 if predicate game:in_air on passengers rotated as @s[type=minecart] at @s positioned ^ ^-1 ^ if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanstomp master @a ~ ~ ~ 1 1.4
execute if score #bool math matches 0 if predicate game:in_air on passengers rotated as @s[type=minecart] at @s positioned ^ ^-1 ^ run scoreboard players set @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1] playerHP 0
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^-0.5 ^ if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanstomp master @a ~ ~ ~ 1 0
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^-0.5 ^ if entity @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1,scores={playerHP=1..}] run playsound snowmanstomp master @a ~ ~ ~ 1 1.4
execute on passengers rotated as @s[type=minecart] unless score #bool math matches 0 at @s positioned ^ ^-0.5 ^ run scoreboard players set @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..1] playerHP 0

# check if occupied
scoreboard players set $occupied CmdData 0
execute on passengers on passengers if entity @s[type=player] run scoreboard players set $occupied CmdData 1
execute if score $occupied CmdData matches 1 unless entity @s[tag=Occupied] on passengers on passengers if entity @s[type=oak_boat] run function powerups:sleigh/occupy
execute if score $occupied CmdData matches 0 if entity @s[tag=Occupied] on passengers on passengers if entity @s[type=oak_boat] on passengers run kill @s[tag=occupant]
execute if score $occupied CmdData matches 1 run tag @s add Occupied
execute if score $occupied CmdData matches 0 run tag @s[tag=Occupied] remove Occupied

# coyote time for jump detection
scoreboard players add @s[predicate=!game:on_ground,scores={vehicle.off_ground=..7}] vehicle.off_ground 1
scoreboard players set @s[predicate=game:on_ground] vehicle.off_ground 0

# input buffering for jump detection
execute if entity @s[tag=Occupied] on passengers on passengers if predicate wasd:jump on vehicle on vehicle run scoreboard players set @s vehicle.since_jump 6
scoreboard players remove @s[scores={vehicle.since_jump=1..}] vehicle.since_jump 1
execute if entity @s[tag=!Occupied] run scoreboard players set @s vehicle.since_jump 0

scoreboard players add @s sleighjumpcd 0
tag @s[tag=!SleighOffGround,scores={vehicle.off_ground=..6,vehicle.since_jump=1..,sleighjumpcd=0}] add SleighJumpBig
scoreboard players remove @s[scores={sleighjumpcd=1..}] sleighjumpcd 1

# big fall detection
execute if predicate game:big_fall run tag @s[tag=!SleighJumpBig] add SleighOffGround
execute if predicate game:big_fall run tag @s[tag=!SleighJumpBig] add SleighJumpBig
execute if predicate game:big_fall run tag @s add bigFall

# auto jump
# execute at @s[tag=Occupied,tag=!SleighOffGround] unless predicate game:on_ground if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

execute at @s[tag=SleighJumpBig] run function powerups:sleigh/jumpbig

# expire over time if unoccupied
scoreboard players reset @s[tag=Occupied] CmdData
scoreboard players add @s[tag=!Occupied] CmdData 1
scoreboard players add @s[scores={CmdData=250..}] sleighDamage 1
execute as @s[scores={CmdData=250..}] at @s run particle item{item:{id:"minecraft:ghast_spawn_egg",components:{item_model:"minecraft:weapons/sleigh"}}} ~ ~0.3 ~ 0.3 0.2 0.3 0.1 20
execute as @s[scores={CmdData=250..}] at @s run playsound sleighdamage master @a ~ ~ ~ 0.6 1
execute at @s[scores={CmdData=250..,sleighDamage=4}] run function powerups:sleigh/break
scoreboard players set @s[scores={CmdData=250..}] CmdData 0