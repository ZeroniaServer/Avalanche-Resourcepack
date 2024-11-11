scoreboard players set @s playerHP 20
scoreboard players reset @s playerDamage
execute as @s at @s run tp @s @s
tp @s[team=Green] -114 47 -210 -90 0
tp @s[team=Red] -12 47 -232 90 0

execute if entity @s[team=Green] run scoreboard players set $GreenRespawn CmdData 1
execute if entity @s[team=Red] run scoreboard players set $RedRespawn CmdData 1

execute as @s at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0