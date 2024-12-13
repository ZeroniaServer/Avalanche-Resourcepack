scoreboard players add @e[type=item_display,tag=aj.elf.root] CmdData 1
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=6}] at @s run particle block{block_state:packed_ice} ~ ~ ~ 0.2 0.1 0.2 0.1 20 force
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=6}] at @s run playsound elfemerge master @a ~ ~ ~ 1 0

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=9}] at @s run playsound elfgiggle master @a ~ ~ ~ 1 1.1

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=20}] at @s run playsound giftboxplace master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=50}] at @s run playsound elfgiggle2 master @a ~ ~ ~ 0.6 1.2

#> Place the actual giftbox
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=23}] store result storage elf:data rotation double 1 run data get entity @s Rotation[0]
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=23}] at @s run function powerups:giftbox/placegift with storage elf:data

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] at @s on passengers run kill @s
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] at @s on vehicle run kill @s
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] run kill @s

#> Set size of new giftboxes
scoreboard players add @e[type=item_display,tag=Giftbox,tag=New] CmdData 1
execute as @e[type=item_display,tag=Giftbox,tag=New,scores={CmdData=3..}] run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f]},interpolation_duration:0,start_interpolation:0}
tag @e[type=item_display,tag=Giftbox,tag=New,scores={CmdData=3..}] remove New

#> Kill the hitbox
execute as @e[type=interaction,tag=GiftboxInteraction] at @s if block ~ ~-1 ~ #game:air unless predicate game:low_arena run particle item{item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:custom/giftbox"}}} ~ ~0.2 ~ 0.1 0.1 0.1 0.03 30 force
execute as @e[type=interaction,tag=GiftboxInteraction] at @s if block ~ ~-1 ~ #game:air unless predicate game:low_arena run playsound giftboxbreak master @a ~ ~ ~ 1 1.2
execute as @e[type=interaction,tag=GiftboxInteraction] at @s if block ~ ~-1 ~ #game:air on passengers run kill
execute as @e[type=interaction,tag=GiftboxInteraction] at @s if block ~ ~-1 ~ #game:air run kill
execute as @e[type=shulker,tag=GiftboxShulker] at @s unless entity @e[type=item_display,tag=Giftbox,distance=..1] run function arenaclear:kill

execute as @a[tag=!secretsanta] at @s if entity @e[type=area_effect_cloud,tag=elfsecret,distance=..6] run tellraw @s {"translate":"secret","color":"#7e50f3","bold":false,"with":[{"translate":"secret.found","color":"#af7aff","bold":true},{"text":"1/1000","color":"#af7aff","bold":true}]}
execute as @a[tag=!secretsanta] at @s if entity @e[type=area_effect_cloud,tag=elfsecret,distance=..6] run tag @s add secretsanta