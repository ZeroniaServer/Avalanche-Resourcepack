execute unless predicate game:barricade_bounds as @a[tag=placer,limit=1] run return run function powerups:barricade/giveback

setblock ~ ~ ~ target
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~-100 ~ {Tags:["barricade"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,100,0],scale:[1.00075,1.00075,1.00075]},view_range:100}