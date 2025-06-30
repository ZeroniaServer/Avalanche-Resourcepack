#> Break sleighs
execute if entity @s[tag=SleighHitbox] run function powerups:sleigh/punchsleigh

#> Open gifts
execute if entity @s[tag=GiftboxInteraction] as @a[tag=hitter,limit=1] run function powerups:giftbox/calc_weights
execute if entity @s[tag=GiftboxInteraction] at @s run function powerups:giftbox/open

#> Snowman
execute if entity @s[tag=hitbox,tag=Green] if entity @a[tag=hitter,team=Red] on vehicle on vehicle if score @s CmdData matches 40.. run function powerups:snowman/damage
execute if entity @s[tag=hitbox,tag=Red] if entity @a[tag=hitter,team=Green] on vehicle on vehicle if score @s CmdData matches 40.. run function powerups:snowman/damage

#> Icicle in general
execute if entity @s[tag=!hitbox,tag=!GiftboxInteraction,tag=!cfcollision,tag=!Knockout,tag=!IFrame] as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run function powerups:icicle/damage
execute if entity @s[type=player,tag=!Knockout,tag=!IFrame] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players add @s playerDamage 5
execute if entity @s[type=player,tag=!Knockout,tag=!IFrame,tag=SnowMark] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players add @s playerDamage 3
execute if entity @s[type=player,tag=!Knockout,tag=!IFrame] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] if score @s playerDamage >= @s playerHP run tag @s add KOmessage
execute unless score $gamestate CmdData matches 4 if entity @s[tag=KOmessage,tag=!KOmessaged] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run tellraw @a [{translate:"knockout.attack.direct",color:"dark_aqua",with:[{selector:"@s"},{selector:"@a[tag=hitter,limit=1]"}]}]
execute if entity @s[tag=KOmessage,tag=!KOmessaged] run scoreboard players add @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] MVPkill 1
execute if entity @s[type=player,tag=!Knockout] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] if score @s playerDamage >= @s playerHP run tag @s add KOmessaged
tag @s remove KOmessage

#> Icicle + Campfires
execute if entity @s[tag=cfcollision,tag=red] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}},team=Green] on vehicle on vehicle run scoreboard players set @s[scores={CmdData=22..899}] CmdData 900
execute if entity @s[tag=cfcollision,tag=red] as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}},team=Green] run function powerups:icicle/damage
execute if entity @s[tag=cfcollision,tag=green] if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}},team=Red] on vehicle on vehicle run scoreboard players set @s[scores={CmdData=22..899}] CmdData 900
execute if entity @s[tag=cfcollision,tag=green] as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}},team=Red] run function powerups:icicle/damage

#> Translator Credits
execute if entity @s[tag=TranslatorCredit] as @e[type=item_display,tag=Globe,tag=!Spin,limit=1] run function lobby:credits/translators/previous