execute unless block ~ ~ ~ target run return run kill

# fixes double ice break break but honestly it's less fun with that fixed
# execute if entity @s[tag=!damaged,tag=break] run tag @s remove break

execute if entity @s[tag=damaged,tag=!break] run function powerups:barricade/damage
execute if entity @s[tag=break] run function powerups:barricade/break