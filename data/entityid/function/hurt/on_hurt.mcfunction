#> Regular damage
execute if entity @s[tag=Iceball] run scoreboard players add @a[tag=victim,tag=!Knockout,limit=1] playerDamage 20
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout,limit=1] playerDamage 5

#> Snow Mark bonus damage
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout,tag=SnowMark,limit=1] playerDamage 2

#> Knockout messages
execute as @a[tag=victim,tag=!Knockout,tag=!KOmessaged,limit=1] if score @s playerDamage >= @s playerHP run tag @s add KOmessage
execute as @a[tag=victim,tag=!Knockout,limit=1] if score @s playerDamage >= @s playerHP run tag @s add KOmessaged
execute on origin if entity @a[tag=victim,tag=KOmessage,limit=1] run tellraw @a [{"translate":"knockout.attack.direct","color":"dark_aqua","with":[{"selector":"@a[tag=victim,tag=KOmessage,limit=1]"},{"selector":"@s"}]}]
tag @a[tag=victim,tag=KOmessage] remove KOmessage

execute at @s run function powerups:throwable_init/impact
kill