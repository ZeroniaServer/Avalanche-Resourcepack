#> Break sleighs
execute if entity @s[tag=SleighHitbox] run function powerups:sleigh/punchsleigh

#> Open gifts
execute if entity @s[tag=GiftboxInteraction] as @a[tag=hitter,limit=1] run function powerups:giftbox/calc_weights
execute if entity @s[tag=GiftboxInteraction] at @s run function powerups:giftbox/open

#> Snowman
execute if entity @s[tag=hitbox,tag=Green] if entity @a[tag=hitter,team=Red] on vehicle on vehicle if score @s CmdData matches 40.. run function powerups:snowman/damage
execute if entity @s[tag=hitbox,tag=Red] if entity @a[tag=hitter,team=Green] on vehicle on vehicle if score @s CmdData matches 40.. run function powerups:snowman/damage

#> Icicle in general
execute if entity @s[tag=!hitbox,tag=!GiftboxInteraction] as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run function powerups:icicle/break
execute if entity @s[type=player,tag=!Knockout] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players remove @s playerHP 6