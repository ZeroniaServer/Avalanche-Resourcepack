execute if entity @s[tag=Knockout] run return run advancement revoke @s only entityid:interaction

execute if entity @s[type=oak_boat] run ride @a[tag=clicker,limit=1] dismount
execute if entity @s[type=oak_boat] on vehicle on vehicle on passengers run ride @a[tag=clicker,limit=1] mount @s[type=minecart]