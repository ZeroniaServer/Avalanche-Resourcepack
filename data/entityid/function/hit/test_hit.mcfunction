execute if entity @s[tag=Knockout] run return run advancement revoke @s only entityid:hit

tag @s add hitter
execute if entity @s[advancements={entityid:hit={target=true}}] run function entityid:hit/find_entity
advancement revoke @s only entityid:hit
tag @s remove hitter