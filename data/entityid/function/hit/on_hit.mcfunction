#> Break sleighs
execute if entity @s[tag=SleighHitbox] run function powerups:sleigh/punchsleigh

#> Open gifts
execute if entity @s[tag=GiftboxInteraction] as @a[tag=hitter,limit=1] run function powerups:giftbox/calc_weights
execute if entity @s[tag=GiftboxInteraction] at @s run function powerups:giftbox/open