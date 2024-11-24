execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

#> Mount sleighs
execute if entity @s[tag=SleighHitbox] on vehicle on passengers if entity @s[type=minecart] unless predicate powerups:sleigh_has_passenger run ride @a[tag=self,limit=1] dismount
execute if entity @s[tag=SleighHitbox] on vehicle on passengers if entity @s[type=minecart] unless predicate powerups:sleigh_has_passenger run ride @a[tag=self,limit=1] mount @s

#> Giftboxes
execute if entity @s[tag=GiftboxInteraction] on target run function powerups:giftbox/calc_weights
execute if entity @s[tag=GiftboxInteraction] at @s run function powerups:giftbox/open

#> Warp Poles
execute if entity @s[tag=WarpGreen] on target run tag @s add WarpGreen
execute if entity @s[tag=WarpRed] on target run tag @s add WarpRed
execute if entity @s[tag=WarpLobby] on target run tag @s add WarpLobby
execute if entity @s[tag=WarpSpectate] on target run tag @s add WarpSpectate