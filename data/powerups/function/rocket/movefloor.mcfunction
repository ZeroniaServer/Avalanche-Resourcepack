execute positioned as @s if block ~ ~-1 ~ #game:air run tp @s ^ ^ ^1
execute positioned as @s if block ~ ~-1 ~ #game:air run return run function powerups:rocket/movefloor
tag @s add movedfloor
execute positioned as @s unless block ~ ~ ~ #game:air positioned over motion_blocking run tp @s ~ ~1 ~