execute as @e[type=text_display,tag=parkour_display,tag=custom,limit=1] run data modify storage lobby:parkour name set from entity @s text.extra[0]
execute as @e[type=text_display,tag=parkour_display,tag=custom,limit=1] run data modify storage lobby:parkour time set from entity @s text.extra[2]

scoreboard players set $WorldVersion CmdData 1010