#> Get progress and add some offset to it
#green
scoreboard players set $firework CmdData 170
scoreboard players operation $firework CmdData -= $green_progress CmdData
execute store result storage bossbars:firework green int 1 run scoreboard players get $firework CmdData
#red
scoreboard players set $firework CmdData 170
scoreboard players operation $firework CmdData -= $red_progress CmdData
execute store result storage bossbars:firework red int 1 run scoreboard players get $firework CmdData

execute unless score $weakpointgreen CmdData matches 1.. run data modify storage bossbars:firework green_rocket set value "\\uE006"
execute unless score $weakpointgreen CmdData matches 1.. run data modify storage bossbars:firework green_rocket_mirror set value "\\uE007"
execute if score $weakpointgreen CmdData matches 1.. run data modify storage bossbars:firework green_rocket set value "\\uE014"
execute if score $weakpointgreen CmdData matches 1.. run data modify storage bossbars:firework green_rocket_mirror set value "\\uE015"

execute unless score $weakpointred CmdData matches 1.. run data modify storage bossbars:firework red_rocket set value "\\uE008"
execute unless score $weakpointred CmdData matches 1.. run data modify storage bossbars:firework red_rocket_mirror set value "\\uE009"
execute if score $weakpointred CmdData matches 1.. run data modify storage bossbars:firework red_rocket set value "\\uE016"
execute if score $weakpointred CmdData matches 1.. run data modify storage bossbars:firework red_rocket_mirror set value "\\uE017"

#modify bossbar name
function bossbars:set_firework_progress with storage bossbars:firework