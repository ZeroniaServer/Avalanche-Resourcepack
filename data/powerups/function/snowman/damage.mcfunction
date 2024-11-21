#> Icicle (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players set @s playerHP 0
execute as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run function powerups:icicle/break

#> Iceball (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={iceball=true}}] run scoreboard players set @s playerHP 0

#> Snowball
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={snowball=true}}] run scoreboard players remove @s playerHP 200
#TODO: Add damage animation here YZERO