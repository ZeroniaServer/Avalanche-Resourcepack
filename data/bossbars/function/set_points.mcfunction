$execute if score $RedPoints CmdData matches 0.. run data modify storage game:data red_r set value '[{"text":"00","color":"#a8a008"},{"text":"$(redpoints)","color":"#a8a010"}]'
$execute if score $RedPoints CmdData matches 10.. run data modify storage game:data red_r set value '[{"text":"0","color":"#a8a008"},{"text":"$(redpoints)","color":"#a8a010"}]'
$execute if score $RedPoints CmdData matches 100.. run data modify storage game:data red_r set value '{"text":"$(redpoints)","color":"#a8a010"}'

$execute if score $RedPoints CmdData matches 0.. run data modify storage game:data red_g set value '[{"text":"$(redpoints)","color":"#a8a010"},{"text":"00","color":"#a8a008"}]'
$execute if score $RedPoints CmdData matches 10.. run data modify storage game:data red_g set value '[{"text":"$(redpoints)","color":"#a8a010"},{"text":"0","color":"#a8a008"}]'
$execute if score $RedPoints CmdData matches 100.. run data modify storage game:data red_g set value '{"text":"$(redpoints)","color":"#a8a010"}'

$execute if score $GreenPoints CmdData matches 0.. run data modify storage game:data green_r set value '[{"text":"$(greenpoints)","color":"#a8a00c"},{"text":"00","color":"#a8a008"}]'
$execute if score $GreenPoints CmdData matches 10.. run data modify storage game:data green_r set value '[{"text":"$(greenpoints)","color":"#a8a00c"},{"text":"0","color":"#a8a008"}]'
$execute if score $GreenPoints CmdData matches 100.. run data modify storage game:data green_r set value '{"text":"$(greenpoints)","color":"#a8a00c"}'

$execute if score $GreenPoints CmdData matches 0.. run data modify storage game:data green_g set value '[{"text":"00","color":"#a8a008"},{"text":"$(greenpoints)","color":"#a8a00c"}]'
$execute if score $GreenPoints CmdData matches 10.. run data modify storage game:data green_g set value '[{"text":"0","color":"#a8a008"},{"text":"$(greenpoints)","color":"#a8a00c"}]'
$execute if score $GreenPoints CmdData matches 100.. run data modify storage game:data green_g set value '{"text":"$(greenpoints)","color":"#a8a00c"}'

execute unless score $gamestate CmdData matches 2 unless entity @e[type=marker,tag=AVSnowStarter] run data modify storage game:data mountain set value '{"text":"\\uE005","color":"#a8a000"}'
execute if score $gamestate CmdData matches 2 unless entity @e[type=marker,tag=AVSnowStarter] run data modify storage game:data mountain set value '{"text":"\\uE00F","color":"#a8a000"}'

function bossbars:set_points_bossbar with storage game:data