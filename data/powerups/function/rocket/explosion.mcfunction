summon lightning_bolt ~ 1000000 ~
particle explosion ~ ~ ~ 2 2 2 0.1 25 force
execute if entity @s[tag=RocketRed] run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2,to_color:[0.639,0.639,0.639]} ~ ~ ~ 2 2 2 0.1 60 force
execute if entity @s[tag=RocketGreen] run particle dust_color_transition{from_color:[0.000,1.000,0.000],scale:2,to_color:[0.639,0.639,0.639]} ~ ~ ~ 2 2 2 0.1 60 force
particle lava ~ ~ ~ 0 0 0 0.5 10 force

execute if entity @s[tag=Scored] run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 6 0.8
playsound entity.firework_rocket.blast master @a ~ ~ ~ 6 0.8
playsound entity.firework_rocket.large_blast_far master @a[distance=20..] ~ ~ ~ 9 0
execute if entity @s[tag=RocketRed,tag=Scored,predicate=game:green_mountain] run playsound entity.generic.explode master @a ~ ~ ~ 3 0
execute if entity @s[tag=RocketGreen,tag=Scored,predicate=game:red_mountain] run playsound entity.generic.explode master @a ~ ~ ~ 3 0

execute if entity @s[tag=RocketRed,tag=!Scored] run playsound entity.generic.explode master @a ~ ~ ~ 3 1
execute if entity @s[tag=RocketGreen,tag=!Scored] run playsound entity.generic.explode master @a ~ ~ ~ 3 1

execute if entity @s[tag=RocketRed,tag=Scored,predicate=!game:green_mountain] run playsound entity.generic.explode master @a ~ ~ ~ 3 1
execute if entity @s[tag=RocketGreen,tag=Scored,predicate=!game:red_mountain] run playsound entity.generic.explode master @a ~ ~ ~ 3 1

execute if entity @s[tag=RocketRed,tag=Scored,predicate=game:green_mountain] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;9043968,10027008],has_trail:true,fade_colors:[I;16711680]}]}}}}
execute if entity @s[tag=RocketGreen,tag=Scored,predicate=game:red_mountain] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;24835,39173],has_trail:true,fade_colors:[I;2293504]}]}}}}

execute if entity @s[tag=RocketRed,tag=!Scored] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;9043968,10027008],has_trail:true,fade_colors:[I;16711680]}]}}}}
execute if entity @s[tag=RocketGreen,tag=!Scored] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;24835,39173],has_trail:true,fade_colors:[I;2293504]}]}}}}

execute if entity @s[tag=RocketRed,tag=Scored,predicate=!game:green_mountain] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;9043968,10027008],has_trail:true,fade_colors:[I;16711680]}]}}}}
execute if entity @s[tag=RocketGreen,tag=Scored,predicate=!game:red_mountain] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;24835,39173],has_trail:true,fade_colors:[I;2293504]}]}}}}

execute if entity @s[tag=RocketRed] if predicate game:green_mountain run scoreboard players add $DamageCalcG CmdData 2
execute if entity @s[tag=RocketRed,tag=Scored] if predicate game:green_mountain on origin run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=RocketRed,tag=Scored] if predicate game:green_mountain on origin run scoreboard players set @s HitmarkerType 0

execute if entity @s[tag=RocketGreen] if predicate game:red_mountain run scoreboard players add $DamageCalcR CmdData 2
execute if entity @s[tag=RocketGreen,tag=Scored] if predicate game:red_mountain on origin run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=RocketGreen,tag=Scored] if predicate game:red_mountain on origin run scoreboard players set @s HitmarkerType 0

#> Weakpoint hits
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 0 positioned -5 66 -226 if entity @s[distance=..4] run scoreboard players set $weakpointgreen CmdData 1
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 1 positioned -16 55 -217 if entity @s[distance=..4] run scoreboard players set $weakpointgreen CmdData 1
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 2 positioned -10 69 -206 if entity @s[distance=..4] run scoreboard players set $weakpointgreen CmdData 1
execute if entity @s[tag=RocketGreen] if score $weakpointgreen CmdData matches 1 run scoreboard players add $DamageCalcR CmdData 1
execute if entity @s[tag=RocketGreen] if score $weakpointgreen CmdData matches 1 on origin run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 0 positioned -5 66 -226 if entity @s[distance=..4] run function game:weakpoint/pick_red
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 1 positioned -16 55 -217 if entity @s[distance=..4] run function game:weakpoint/pick_red
execute if entity @s[tag=RocketGreen] if predicate game:red_mountain if score $RedWeakpoint CmdData matches 2 positioned -10 69 -206 if entity @s[distance=..4] run function game:weakpoint/pick_red

execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 0 positioned -121 66 -216 if entity @s[distance=..4] run scoreboard players set $weakpointred CmdData 1
execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 1 positioned -110 55 -225 if entity @s[distance=..4] run scoreboard players add $weakpointred CmdData 1
execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 2 positioned -116 69 -236 if entity @s[distance=..4] run scoreboard players add $weakpointred CmdData 1
execute if entity @s[tag=RocketRed] if score $weakpointred CmdData matches 1 run scoreboard players add $DamageCalcG CmdData 1
execute if entity @s[tag=RocketRed] if score $weakpointred CmdData matches 1 on origin run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 0 positioned -121 66 -216 if entity @s[distance=..4] run function game:weakpoint/pick_green
execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 1 positioned -110 55 -225 if entity @s[distance=..4] run function game:weakpoint/pick_green
execute if entity @s[tag=RocketRed] if predicate game:green_mountain if score $GreenWeakpoint CmdData matches 2 positioned -116 69 -236 if entity @s[distance=..4] run function game:weakpoint/pick_green


execute if entity @s[tag=Scored] run function game:balancing/set_multiplier

execute if entity @s[tag=RocketRed,tag=Scored] run scoreboard players operation $DamageCalcG CmdData *= $GreenMult CmdData
execute if entity @s[tag=RocketGreen,tag=Scored] run scoreboard players operation $DamageCalcR CmdData *= $RedMult CmdData

execute if entity @s[tag=RocketRed,tag=Scored] run scoreboard players operation $DamageGreen CmdData += $DamageCalcG CmdData
execute if entity @s[tag=RocketGreen,tag=Scored] run scoreboard players operation $DamageRed CmdData += $DamageCalcR CmdData

execute if entity @s[tag=RocketRed,tag=Scored] on origin run scoreboard players operation @s MVPdamage += $DamageCalcG CmdData
execute if entity @s[tag=RocketGreen,tag=Scored] on origin run scoreboard players operation @s MVPdamage += $DamageCalcR CmdData
execute if entity @s[tag=RocketRed,tag=Scored] if score $DamageCalcG CmdData matches 1.. on origin run scoreboard players add @s MVProcket 1
execute if entity @s[tag=RocketGreen,tag=Scored] if score $DamageCalcR CmdData matches 1.. on origin run scoreboard players add @s MVProcket 1

scoreboard players reset $DamageCalcG CmdData
scoreboard players reset $DamageCalcR CmdData

#> Destroy nearby Snowmen
execute as @e[type=item_display,tag=Snowman,distance=..4] at @s run function powerups:snowman/kill

#> Destroy nearby Sleighs
execute as @e[type=turtle,distance=..5] at @s run scoreboard players add @s sleighDamage 1
execute as @e[type=turtle,distance=..5] at @s run function powerups:sleigh/break

#> Destroy nearby Snow Barricades
execute positioned ~ ~-100 ~ as @e[type=item_display,tag=barricade,distance=..4] at @s positioned ~ ~100 ~ run function powerups:barricade/damage
execute positioned ~ ~-100 ~ as @e[type=item_display,tag=barricade,distance=..2.5] at @s positioned ~ ~100 ~ run function powerups:barricade/damage
execute positioned ~ ~-100 ~ as @e[type=item_display,tag=barricade,distance=..1.5] at @s positioned ~ ~100 ~ run function powerups:barricade/damage

#> Give levitation + tag players as Blasted
execute as @a[tag=!Blasted,gamemode=!spectator,distance=..5] unless predicate game:low_arena run effect give @s levitation 1 60 true
execute as @a[tag=!Blasted,gamemode=!spectator,distance=..5] if predicate game:low_arena run effect give @s levitation 1 200 true
tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted

#> Blast nearby players backward
scoreboard players set $blast CmdData 0
execute on origin run tag @s add shooter
execute as @a[gamemode=!spectator,distance=..5] unless entity @s[tag=shooter,predicate=game:low_arena] run scoreboard players set $blast CmdData 1
execute if score $blast CmdData matches 1 run function powerups:rocket/blast/summonslime
execute at @s as @a[gamemode=!spectator,distance=..5] run damage @s 1 arrow at ~ ~ ~
execute as @a[gamemode=!spectator,distance=..5] run damage @s 1 arrow by @a[tag=shooter,limit=1]
execute on origin run tag @s remove shooter

execute on passengers run kill @s
kill @s