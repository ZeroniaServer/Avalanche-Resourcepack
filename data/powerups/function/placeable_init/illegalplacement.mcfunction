#> Entity-based illegal cases
execute if entity @e[type=interaction,tag=GiftboxInteraction,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=item_display,tag=Snowman,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=item_display,tag=CampfireEntity,distance=..0.5] run return run tag @s add illegal
execute positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=CampfireEntity,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=turtle,distance=..1] run return run tag @s add illegal

#> Block-based illegal cases
execute if block ~ ~-0.5 ~ #powerups:placeable_exclude run return run tag @s add illegal
execute if block ~ ~0.5 ~ #minecraft:fence_gates[open=false] run return run tag @s add illegal
execute if block ~ ~0.5 ~ #minecraft:walls run return run tag @s add illegal
execute if block ~ ~ ~ lantern run return run tag @s add illegal
execute if block ~ ~-0.5 ~ #minecraft:stairs run return run tag @s add illegal
execute if block ~ ~ ~ #minecraft:fences run return run tag @s add illegal
execute if block ~ ~ ~ #minecraft:walls run return run tag @s add illegal

#> Outside arena
execute unless predicate game:in_arena run tag @s add illegal