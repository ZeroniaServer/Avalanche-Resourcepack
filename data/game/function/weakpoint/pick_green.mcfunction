scoreboard players operation $CurrentWeakGreen CmdData = $GreenWeakpoint CmdData
execute store result score $GreenWeakpoint CmdData run random value 0..2
execute if score $CurrentWeakGreen CmdData = $GreenWeakpoint CmdData run return run function game:weakpoint/pick_green
function game:weakpoint/remove_green
scoreboard players set $WeakpointSpawnGreen CmdData 0
execute unless entity @s[tag=Scored] run scoreboard players add $DamageCalcG CmdData 2
tag @s add Scored