execute as @e[type=item_display,tag=aj.snowman.root] run function powerups:snowman/assnowman

scoreboard players add @e[type=snowball,tag=SnowmanSnowball] CmdData 1
execute as @e[type=snowball,tag=SnowmanSnowball,scores={CmdData=10}] run data merge entity @s {NoGravity:0b}