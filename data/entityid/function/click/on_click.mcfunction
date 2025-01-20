execute if entity @s[tag=Knockout] run return run advancement revoke @s only entityid:interaction

execute if entity @s[type=bamboo_raft] run ride @a[tag=clicker,limit=1] dismount
execute if entity @s[type=bamboo_raft] on vehicle on vehicle on passengers run ride @a[tag=clicker,limit=1] mount @s[type=minecart]