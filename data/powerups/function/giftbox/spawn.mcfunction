kill @e[type=marker,tag=GiftSpawner]
scoreboard players set $giftcount CmdData 0
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=..22}] run scoreboard players add $giftcount CmdData 1
execute as @e[type=item_display,tag=Giftbox] run scoreboard players add $giftcount CmdData 1

execute unless score $giftcount CmdData matches 8.. run summon marker -63 42 -221 {Tags:["GiftSpawner"]}
execute unless score $giftcount CmdData matches 8.. as @e[type=marker,tag=GiftSpawner] at @s run function powerups:giftbox/pickposition
kill @e[type=marker,tag=GiftSpawner]