scoreboard players enable @a[predicate=lobby:modification_room] modify

execute as @a[predicate=lobby:modification_room,scores={modify=293044}] run function lobby:settings/time
execute as @a[predicate=lobby:modification_room,scores={modify=8143}] run function lobby:settings/preptime
execute as @a[predicate=lobby:modification_room,scores={modify=32466}] run function lobby:settings/barricades
execute as @a[predicate=lobby:modification_room,scores={modify=298375}] run function lobby:settings/defaults
execute as @a[predicate=lobby:modification_room,scores={modify=23401}] run function lobby:settings/confirm
scoreboard players reset @a[predicate=!lobby:modification_room] modify
execute as @a[predicate=lobby:modification_room] unless score @s modify matches 0 run scoreboard players reset @s modify