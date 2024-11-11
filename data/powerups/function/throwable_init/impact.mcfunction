execute on vehicle run kill

# execute unless entity @s[tag=!Snowball,tag=!Iceball] at @s[nbt={inBlockState:{Name:"minecraft:target"}}] run function entityid:target/on_target

execute at @s[tag=Snowball] run return run function powerups:snowball/impact
execute at @s[tag=Iceball] run return run function powerups:iceball/impact
execute at @s[tag=Coalstock] run return run function powerups:coalstock/impact
execute at @s[tag=Snowglobe] run return run function powerups:snowglobe/impact
execute at @s[tag=AvalancheRocket] run tag @s add Scored
execute at @s[tag=AvalancheRocket] run function powerups:rocket/explosion