kill @e[type=marker,tag=GiftSpawner]
execute unless score $giftcount CmdData matches 8.. run summon marker -63 42 -221 {Tags:["GiftSpawner"]}
execute unless score $giftcount CmdData matches 8.. as @e[type=marker,tag=GiftSpawner] at @s run function powerups:giftbox/pickposition
kill @e[type=marker,tag=GiftSpawner]