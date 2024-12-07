tag @s add self
execute if score $gamestate CmdData matches 3.. if entity @s[tag=!Knockout,predicate=game:void] at @s run function powerups:rocket/drop

execute if entity @s[team=Lobby] run tp @s @s
execute if entity @s[team=Lobby] run return run tp @s -65 52 -108 -180 0
execute if entity @s[team=Spectator] run return run tp @s -63 85 -221

clear @s snowball
clear @s ghast_spawn_egg
execute if score $gamestate CmdData matches 3 run clear @s clay
clear @s elytra

# TODO: make sure hats are not diamond hoes so they don't get cleared
clear @s diamond_hoe

#> Knockout messages
tag @s add self
execute if entity @s[tag=SleighDismounted] run tellraw @a [{"translate":"knockout.void.sleigh","color":"dark_aqua","with":[{"selector":"@s"}]}]
scoreboard players set #attacker CmdData 0
execute if entity @s[tag=!SleighDismounted] on attacker run scoreboard players set #attacker CmdData 1
execute if score #attacker CmdData matches 0 if entity @s[tag=!SleighDismounted] run tellraw @a [{"translate":"knockout.void.accident","color":"dark_aqua","with":[{"selector":"@s"}]}]
execute if entity @s[tag=!SleighDismounted] unless score @s snowmanhit matches 1.. on attacker run tellraw @a [{"translate":"knockout.void.direct","color":"dark_aqua","with":[{"selector":"@a[tag=self,limit=1]"},{"selector":"@s"}]}]
execute if entity @s[tag=!SleighDismounted] if score @s snowmanhit matches 1.. on attacker run tellraw @a [{"translate":"knockout.void.snowman","color":"dark_aqua","with":[{"selector":"@a[tag=self,limit=1]"},{"selector":"@s"}]}]

#> Kill any no-drop items owned by this player
execute as @e[type=item] if items entity @s contents *[custom_data~{NoDrop:1b}] store success score @s blasttime on origin if entity @s[tag=self]
execute as @e[type=item,scores={blasttime=1..}] run kill @s

tag @s remove self

function player:respawn