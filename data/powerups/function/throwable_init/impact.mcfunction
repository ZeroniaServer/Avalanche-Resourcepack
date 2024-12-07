execute on vehicle run kill

execute at @s if predicate game:red_base run tag @s add BasePrevention
execute at @s if predicate game:green_base run tag @s add BasePrevention
execute at @s if predicate game:red_base on vehicle run tag @s add BasePrevention
execute at @s if predicate game:green_base on vehicle run tag @s add BasePrevention
execute at @s if predicate game:red_base on passengers run tag @s add BasePrevention
execute at @s if predicate game:green_base on passengers run tag @s add BasePrevention

execute at @s[tag=Snowball,tag=!BasePrevention] run return run function powerups:snowball/impact
execute at @s[tag=SnowmanSnowball,tag=!BasePrevention] run return run function powerups:snowball/impact
execute at @s[tag=Iceball,tag=!BasePrevention] run return run function powerups:iceball/impact
execute at @s[tag=Coalstock,tag=!BasePrevention] run return run function powerups:coalstock/impact
execute at @s[tag=Snowglobe,tag=!BasePrevention] run return run function powerups:snowglobe/impact
execute at @s[tag=AvalancheRocket,tag=!BasePrevention] run tag @s add Scored
execute at @s[tag=AvalancheRocket,tag=!BasePrevention] run function powerups:rocket/explosion