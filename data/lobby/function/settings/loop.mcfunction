scoreboard players enable @a[predicate=lobby:modification_room] modify

execute unless entity @a[tag=ModiOwner] if entity @a[predicate=lobby:modification_room,limit=1,scores={modify=1..}] run playsound item.book.page_turn master @a -63 53 -93 1 1
execute unless entity @a[tag=ModiOwner] if entity @a[predicate=lobby:modification_room,limit=1,scores={modify=1..}] run tag @a[predicate=lobby:modification_room,limit=1,sort=random,scores={modify=1..}] add ModiOwner
execute as @a[tag=ModiOwner,predicate=lobby:modification_room,scores={modify=293044}] run function lobby:settings/time
execute as @a[tag=ModiOwner,predicate=lobby:modification_room,scores={modify=8143}] run function lobby:settings/preptime
execute as @a[tag=ModiOwner,predicate=lobby:modification_room,scores={modify=32466}] run function lobby:settings/barricades
execute as @a[tag=ModiOwner,predicate=lobby:modification_room,scores={modify=298375}] run function lobby:settings/defaults
execute as @a[tag=ModiOwner,predicate=lobby:modification_room,scores={modify=23401}] run function lobby:settings/confirm
execute as @a[tag=ModiOwner,predicate=!lobby:modification_room] run trigger modify set -1
scoreboard players reset @a[predicate=!lobby:modification_room] modify
tag @a[predicate=!lobby:modification_room,tag=ModiOwner] remove ModiOwner
effect clear @a[predicate=!lobby:modification_room,tag=ModiOwner] glowing
execute as @a[predicate=lobby:modification_room] unless score @s modify matches 0 run scoreboard players reset @s modify

scoreboard players add @a[tag=ModiOwner] modiowner 1
execute as @a[tag=ModiOwner,scores={modiowner=400..}] run trigger modify set -1
execute as @a[tag=ModiOwner,scores={modiowner=400..}] run scoreboard players reset @s modify
effect clear @a[tag=ModiOwner,scores={modiowner=400..}] glowing
tag @a[tag=ModiOwner,scores={modiowner=400..}] remove ModiOwner
scoreboard players reset @a[tag=!ModiOwner] modiowner

effect give @a[tag=ModiOwner] glowing 1 0 true

#> Particles
execute unless entity @a[predicate=lobby:modification_room] run particle trail{duration:40,color:[0.929,0.529,0.651],target:[-57.5,54.5,-89.5]} -60 54 -90 0.1 1 1 0 5 force
execute unless entity @a[predicate=lobby:modification_room] run particle trail{duration:40,color:[0.086,0.6,0.604],target:[-57.5,54.5,-89.5]} -60 54 -90 0.1 1 1 0 5 force