function iris:get_target
execute if entity @s[tag=Red] run return run tag @a[tag=iris.targeted_entity,team=Green,tag=!Knockout,limit=1] add snowmanTarget
execute if entity @s[tag=Green] run return run tag @a[tag=iris.targeted_entity,team=Red,tag=!Knockout,limit=1] add snowmanTarget
return fail