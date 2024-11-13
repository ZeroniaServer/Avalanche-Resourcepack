tag @s add firstTick
execute at @s[tag=!SleighOffGround] run function powerups:sleigh/up
execute at @s[tag=SleighOffGround] run particle snowflake ^ ^-1 ^ 0 0.4 0 0 2 force
execute at @s[tag=SleighOffGround,predicate=!game:in_air,predicate=!game:on_ice,tag=secondTick] run function powerups:sleigh/land
execute at @s[tag=SleighOffGround,predicate=!game:in_air,predicate=game:on_ice,tag=secondTick] run function powerups:sleigh/landice
tag @s[tag=firstTick] add secondTick