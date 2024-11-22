#> Removes all blocks/entities from the arena to save on lag
function powerups:barricade/clearall
execute as @e[type=turtle,tag=sleigh] run function arenaclear:kill_recursive
function animated_java:snowman/remove/all
execute as @e[type=husk] run function arenaclear:kill
execute as @e[type=snowball] run function arenaclear:kill_recursive
kill @e[type=item,tag=FireworkItem]
execute as @e[type=slime,tag=BlastSlime] run function arenaclear:kill
kill @e[type=area_effect_cloud,tag=BlastAEC]
kill @e[type=item_display,tag=CampfireEntity]
kill @e[type=item_display,tag=Snowglobe]
kill @e[type=item_display,tag=SnowMarkCloud]
function animated_java:elf/remove/all
kill @e[type=interaction,tag=GiftboxInteraction]
kill @e[type=item_display,tag=Giftbox]
execute as @e[type=shulker] run function arenaclear:kill
kill @e[type=marker,tag=GiftSpawner]
kill @e[type=marker,tag=AVSnowStarter]
kill @e[type=marker,tag=SnowEmitter]
kill @e[type=block_display,tag=SnowBlockDisplay]
kill @e[type=block_display,tag=SecondarySnowBlockDisplay]