$execute if score $RedPoints CmdData matches 0.. run data modify storage game:data red set value '[{"text":"00","color":"#a8a008"},{"text":"$(redpoints)","color":"red"}]'
$execute if score $RedPoints CmdData matches 10.. run data modify storage game:data red set value '[{"text":"0","color":"#a8a008"},{"text":"$(redpoints)","color":"red"}]'
$execute if score $RedPoints CmdData matches 100.. run data modify storage game:data red set value '{"text":"$(redpoints)","color":"red"}'

$execute if score $GreenPoints CmdData matches 0.. run data modify storage game:data green set value '[{"text":"00","color":"#a8a008"},{"text":"$(greenpoints)","color":"green"}]'
$execute if score $GreenPoints CmdData matches 10.. run data modify storage game:data green set value '[{"text":"0","color":"#a8a008"},{"text":"$(greenpoints)","color":"green"}]'
$execute if score $GreenPoints CmdData matches 100.. run data modify storage game:data green set value '{"text":"$(greenpoints)","color":"green"}'

execute unless entity @e[type=marker,tag=AVSnowStarter] run data modify storage game:data mountain set value '{"text":"\\uE005","color":"#a8a000"}'

function bossbars:set_points_bossbar with storage game:data