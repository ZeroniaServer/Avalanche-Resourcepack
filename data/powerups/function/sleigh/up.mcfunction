data modify entity @s Motion[1] set value 1d
playsound sleighjump master @a ~ ~ ~ 1 0.8
particle cloud ^ ^ ^ 0 0 0 0.2 1 force
tag @s add SleighOffGround
scoreboard players set @s sleighjumpcd 5