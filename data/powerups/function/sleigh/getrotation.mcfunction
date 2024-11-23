rotate @s ~ ~
data modify storage avalanche:sleigh rotX set from entity @s Rotation[0]
execute if entity @s[tag=dura0] run scoreboard players set $dura sleighDamage 0
execute if entity @s[tag=dura1] run scoreboard players set $dura sleighDamage 1
execute if entity @s[tag=dura2] run scoreboard players set $dura sleighDamage 2
execute if entity @s[tag=dura3] run scoreboard players set $dura sleighDamage 3
execute store result storage avalanche:sleighdrop val int 1 run scoreboard players get $dura sleighDamage
execute at @s run function powerups:sleigh/attemptplace
kill @s