execute store result bossbar bar_g_green value run scoreboard players get $bar_g_green CmdData
execute store result bossbar bar_g_red value run scoreboard players get $bar_g_red CmdData

#> Show red bars for Red team
execute if score $gamestate CmdData matches 2.. run bossbar set bar_r_main players @a[team=Red]
execute if score $gamestate CmdData matches 2.. run bossbar set bar_r_red players @a[team=Red]
execute if score $gamestate CmdData matches 2.. run bossbar set bar_r_green players @a[team=Red]

#> Show green bars for Green and Spectator teams
execute if score $gamestate CmdData matches 2.. run bossbar set bar_g_main players @a[team=!Red,team=!Lobby]
execute if score $gamestate CmdData matches 2.. run bossbar set bar_g_green players @a[team=!Red,team=!Lobby]
execute if score $gamestate CmdData matches 2.. run bossbar set bar_g_red players @a[team=!Red,team=!Lobby]

#> Hide bars if games are inactive
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_main players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_green players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_red players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_main players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_red players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_green players

#> Calculate bossbar progress
execute store result score $bar_g_green CmdData run scoreboard players get $green_progress CmdData
scoreboard players operation $bar_g_red CmdData = $350 CmdData
scoreboard players operation $bar_g_red CmdData -= $red_progress CmdData

execute store result score $bar_r_red CmdData run scoreboard players get $red_progress CmdData
scoreboard players operation $bar_r_green CmdData = $350 CmdData
scoreboard players operation $bar_r_green CmdData -= $green_progress CmdData


#> Modify bossbar values
execute store result bossbar bar_g_green value run scoreboard players get $bar_g_green CmdData
execute store result bossbar bar_g_red value run scoreboard players get $bar_g_red CmdData

execute store result bossbar bar_r_green value run scoreboard players get $bar_r_green CmdData
execute store result bossbar bar_r_red value run scoreboard players get $bar_r_red CmdData

#> Move the firework icon
function bossbars:get_firework_progress

#> Apply damage
function bossbars:apply_damage

#> Set lobby bar for Lobby players
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a

#> Store correct information and values in the lobby bar
execute if score $gamestate CmdData matches -1 run bossbar set bar_lobby value 0
execute if score $gamestate CmdData matches -1 run bossbar set bar_lobby name "TODO: Please confirm settings."

execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby value 0
execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby name "TODO: Waiting for Green and Red players"

execute if score $gamestate CmdData matches 0 if entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby value 5
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby name "TODO: Waiting for Red players"

execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby value 5
execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby name "TODO: Waiting for Green players"

execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby value 10
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby name "TODO: Waiting for teams to ready up"