execute if entity @s[team=Lobby] run tp @s @s
execute if entity @s[team=Lobby] run return run tp @s -65 52 -108
# execute if entity @s[team=Spectator] run return run TELEPORT BACK TO ARENA

clear @s snowball
clear @s ghast_spawn_egg
execute if score $gamestate CmdData matches 3 run clear @s clay
clear @s elytra

# TODO: make sure hats are not diamond hoes so they don't get cleared
clear @s diamond_hoe

# TODO tellraw player death here

function player:respawn