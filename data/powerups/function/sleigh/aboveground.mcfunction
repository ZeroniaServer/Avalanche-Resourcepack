scoreboard players set $aboveground CmdData 0

execute at @s positioned ~ ~ ~ if entity @e[type=shulker,tag=GiftboxShulker,distance=..0.9] run return run kill
execute at @s positioned ~ ~-0.5 ~ if entity @e[type=shulker,tag=cfcollision,distance=..1] run return run kill
execute at @s positioned ~ ~-0.5 ~ if entity @e[type=bamboo_raft,tag=!thisboat,tag=solid,distance=..0.5] run return run kill

scoreboard players set $aboveground CmdData 1
execute positioned ~ ~ ~ run function powerups:sleigh/groundcheck
execute if score $aboveground CmdData matches 1 positioned ~-0.5 ~ ~-0.5 run function powerups:sleigh/groundcheck
execute if score $aboveground CmdData matches 1 positioned ~-0.5 ~ ~0.5 run function powerups:sleigh/groundcheck
execute if score $aboveground CmdData matches 1 positioned ~0.5 ~ ~-0.5 run function powerups:sleigh/groundcheck
execute if score $aboveground CmdData matches 1 positioned ~0.5 ~ ~0.5 run function powerups:sleigh/groundcheck

kill @s