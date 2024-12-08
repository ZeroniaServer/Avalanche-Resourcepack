execute if entity @s[tag=NaturalRespawn] run return run tag @s remove NaturalRespawn
scoreboard players set @s playerHP 4
function inventory:load
tellraw @a {"translate":"revive.campfire.base","color":"dark_aqua","with":[{"selector":"@s"}]}
function inventory:clear
execute if entity @s[team=Green] run scoreboard players set $GreenRespawn CmdData 1
execute if entity @s[team=Red] run scoreboard players set $RedRespawn CmdData 1
execute at @s run playsound playerrespawn2 master @s ~ ~ ~ 1 0