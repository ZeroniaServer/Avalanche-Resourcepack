#> Regular damage
execute if entity @s[tag=Iceball] run scoreboard players add @a[tag=victim,tag=!Knockout,limit=1,tag=!IFrame] playerDamage 20
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout,limit=1,tag=!IFrame] playerDamage 5
execute if entity @s[tag=SnowmanSnowball] run scoreboard players add @a[tag=victim,tag=!Knockout,limit=1,tag=!IFrame] playerDamage 5

#> Snow Mark bonus damage
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout,tag=SnowMark,limit=1,tag=!IFrame] playerDamage 3
execute if entity @s[tag=SnowmanSnowball] run scoreboard players add @a[tag=victim,tag=!Knockout,tag=SnowMark,limit=1,tag=!IFrame] playerDamage 3

#> Knockout messages
execute if entity @a[tag=victim,tag=Knockout] run data merge entity @s {Silent:1b}
execute if entity @a[tag=victim,tag=IFrame] run data merge entity @s {Silent:1b}
execute if entity @a[tag=victim,scores={respawn=1..}] run data merge entity @s {Silent:1b}
execute as @a[tag=victim,tag=!Knockout,tag=!KOmessaged,limit=1] if score @s playerDamage >= @s playerHP run tag @s add KOmessage
execute as @a[tag=victim,tag=!Knockout,limit=1] if score @s playerDamage >= @s playerHP run tag @s add KOmessaged
execute unless entity @s[tag=SnowmanSnowball] on origin if entity @a[tag=victim,tag=KOmessage,limit=1] run tellraw @a [{"translate":"knockout.attack.direct","color":"dark_aqua","with":[{"selector":"@a[tag=victim,tag=KOmessage,limit=1]"},{"selector":"@s"}]}]
execute if entity @s[tag=SnowmanSnowball] on origin if entity @a[tag=victim,tag=KOmessage,limit=1] run tellraw @a [{"translate":"knockout.attack.snowman","color":"dark_aqua","with":[{"selector":"@a[tag=victim,tag=KOmessage,limit=1]"},{"selector":"@s"}]}]
execute on origin if entity @a[tag=victim,tag=KOmessage,limit=1] run scoreboard players add @s MVPkill 1
tag @a[tag=victim,tag=KOmessage] remove KOmessage
execute unless entity @s[tag=SnowmanSnowball] run scoreboard players reset @a[tag=victim,tag=!Knockout] snowmanhit
execute if entity @s[tag=SnowmanSnowball] run scoreboard players set @a[tag=victim,tag=!Knockout] snowmanhit 1
execute at @s if predicate game:red_base run kill @s
execute at @s if predicate game:green_base run kill @s
execute at @s run function powerups:throwable_init/impact
kill