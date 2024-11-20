#> Icicle (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] on vehicle on vehicle run scoreboard players set @s[scores={CmdData=30..}] playerHP 0

#> Iceball (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={iceball=true}}] on vehicle on vehicle run scoreboard players set @s[scores={CmdData=30..}] playerHP 0

#> Snowball
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={snowball=true}}] on vehicle on vehicle run scoreboard players remove @s[scores={CmdData=30..}] playerHP 200
#TODO: Add damage animation here YZERO