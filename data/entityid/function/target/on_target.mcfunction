#> Store snowball ID
execute if entity @s[type=arrow] on vehicle run scoreboard players operation $tempuuid UUIDscore = @s entityid
execute if entity @s[type=snowball] on passengers run scoreboard players operation $tempuuid UUIDscore = @s entityid

#> Decide whether to use this block or the old one
execute if score @s throwsb matches 2.. run tag @e[type=item_display,tag=damaged,predicate=player:matches_uuid] remove damaged
execute unless score @s throwsb matches 2.. if entity @e[type=item_display,tag=damaged,predicate=player:matches_uuid] run return fail

#> Find new block player hit this tick
data modify storage entityid:target Motion set from entity @s Motion

scoreboard players operation $tempuuid UUIDscore = @s entityid
execute if entity @s[tag=Iceball] summon marker run function entityid:target/find_block {limit:2}
execute if entity @s[tag=Snowball] summon marker run function entityid:target/find_block {limit:1}

#> Ice ball special consideration
execute if entity @s[tag=Iceball] run tag @e[type=item_display,tag=damaged,predicate=player:matches_uuid] add break