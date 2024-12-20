summon item_display ~ ~ ~ {Tags:["sleighground","init"]}
ride @s mount @n[tag=sleighground,tag=init]
execute on vehicle run tag @s remove init
scoreboard players reset @s snowballcounter