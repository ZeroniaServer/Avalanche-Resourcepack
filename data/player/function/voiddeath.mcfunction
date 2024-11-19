# TODO tellraw player death here

# execute if entity @s[team=Lobby] run return run TELEPORT BACK TO LOBBY
# execute if entity @s[team=Spectator] run return run TELEPORT BACK TO ARENA

clear @s snowball
clear @s ghast_spawn_egg
execute if score $gamestate CmdData matches 3 run clear @s clay

# TODO: make sure hats are not diamond hoes so they don't get cleared
clear @s diamond_hoe

function player:respawn