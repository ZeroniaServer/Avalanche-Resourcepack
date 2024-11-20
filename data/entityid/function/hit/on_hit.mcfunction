#> Break sleighs
execute if entity @s[tag=SleighHitbox] run function powerups:sleigh/punchsleigh

#> Open gifts
execute if entity @s[tag=GiftboxInteraction] as @a[tag=hitter,limit=1] run function powerups:giftbox/calc_weights
execute if entity @s[tag=GiftboxInteraction] at @s run function powerups:giftbox/open

#> Snowman
execute if entity @s[tag=hitbox,tag=Green] if entity @a[tag=hitter,team=Red] run function powerups:snowman/damage
execute if entity @s[tag=hitbox,tag=Red] if entity @a[tag=hitter,team=Green] run function powerups:snowman/damage