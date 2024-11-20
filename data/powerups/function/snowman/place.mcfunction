advancement revoke @s only powerups:place_snowman

execute at @n[type=marker,tag=SnowmanSpawner,tag=Red] facing entity @s eyes rotated ~ 0 run function animated_java:snowman/summon/red with storage snowman:team
execute at @n[type=marker,tag=SnowmanSpawner,tag=Green] facing entity @s eyes rotated ~ 0 run function animated_java:snowman/summon/green with storage snowman:team
kill @e[type=marker,tag=SnowmanSpawner]