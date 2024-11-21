advancement revoke @s only powerups:place_barricade
tag @s add placer
execute summon marker run function blockcheck:start
tag @s remove placer
scoreboard players reset @s placeBarricade