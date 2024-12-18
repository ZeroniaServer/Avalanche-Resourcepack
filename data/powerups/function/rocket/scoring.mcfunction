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