scoreboard players add @s ambientfxplayer 1
execute at @s[tag=Red] run particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~1 ~ 0 0.5 0 0.03 1 force
execute at @s[tag=Green] run particle dust{color:[0.000,1.000,0.000],scale:0.5} ~ ~ ~ 0 1 0 0.03 1 force
execute at @s[scores={ambientfxplayer=1}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=10}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=20}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=30}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=40}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=50}] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute at @s[scores={ambientfxplayer=40}] run playsound block.campfire.crackle master @a ~ ~ ~ 0.3 1.3
scoreboard players reset @s[scores={ambientfxplayer=60..}] ambientfxplayer
function powerups:campfire/heal