execute as @a[scores={breakicicle=1..}] at @s anchored eyes run particle block{block_state:packed_ice} ^ ^ ^0.4 0 0 0 0.1 10 force
execute as @a[scores={breakicicle=1..}] at @s run playsound iciclebreak2 master @a ~ ~ ~ 0.5 0.7
execute as @a[scores={breakicicle=1..}] at @s run playsound iciclebreak2 master @a ~ ~ ~ 0.5 1.2

scoreboard players reset @a[scores={breakicicle=1..}] breakicicle