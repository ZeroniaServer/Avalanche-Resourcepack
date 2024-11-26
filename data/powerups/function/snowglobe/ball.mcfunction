#> Make the ball shoot up
execute at @s[scores={CmdData=2}] run particle small_gust ~ ~1 ~ 0 1 0 0.02 12 force
execute at @s[scores={CmdData=5}] run particle small_gust ~ ~2 ~ 0 1.2 0 0.02 12 force
execute at @s[scores={CmdData=7}] run particle small_gust ~ ~2.5 ~ 0 1.5 0 0.02 12 force

data merge entity @s[scores={CmdData=2..6}] {interpolation_duration:4,start_interpolation:0,transformation:{translation:[0.0f,5.0f,0.0f]}}
data merge entity @s[scores={CmdData=12}] {interpolation_duration:9,start_interpolation:0,transformation:{translation:[0.0f,4.0f,0.0f]}}
execute at @s[scores={CmdData=14}] run particle gust ~ ~4 ~ 0 0 0 0 1 force
execute at @s[scores={CmdData=14}] run particle gust_emitter_small ~ ~6 ~ 1 1 1 0.1 4 force
execute at @s[scores={CmdData=16}] run playsound snowglobeburst master @a ~ ~5 ~ 1 1
execute at @s[scores={CmdData=15..16}] run particle cloud ~ ~5 ~ 0.2 0.2 0.2 0.4 60 force
execute at @s[scores={CmdData=16}] run function powerups:snowglobe/summon_cloud
kill @s[scores={CmdData=16..}]