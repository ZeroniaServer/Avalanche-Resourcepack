playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
playsound minecraft:block.glass.place master @a ~ ~ ~ 1 0
playsound minecraft:block.glass.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1.4
particle block{block_state:"ice"} ~ ~1 ~ 1 1 1 0.1 100 force
scoreboard players add @s sleighDamage 1
execute if score @s sleighDamage matches 4 run function powerups:sleigh/break
tag @s remove SleighOffGround
tag @s remove SleighJumpBig
tag @s remove firstTick
tag @s remove secondTick