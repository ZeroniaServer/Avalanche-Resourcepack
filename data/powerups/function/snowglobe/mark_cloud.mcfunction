scoreboard players add @s CmdData 1
data merge entity @s[scores={CmdData=2}] {start_interpolation:0,interpolation_duration:10,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @s[tag=!DespawnCloud] run function powerups:snowglobe/trackplayer

scoreboard players add @s[tag=DespawnCloud] snowmark 1
data merge entity @s[tag=DespawnCloud,scores={snowmark=1}] {start_interpolation:0,interpolation_duration:40,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,1.0f,0.0f]}}
execute at @s[tag=DespawnCloud,scores={snowmark=4}] run particle small_gust ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force
execute at @s[tag=DespawnCloud,scores={snowmark=4}] run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 4 force
kill @s[tag=DespawnCloud,scores={snowmark=4..}]

execute at @s[tag=!DespawnCloud] run particle snowflake ~ ~1 ~ 0.3 0 0.3 0.01 1 force