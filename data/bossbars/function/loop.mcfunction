execute store result bossbar bar_g_green value run scoreboard players get $bar_g_green CmdData
execute store result bossbar bar_g_red value run scoreboard players get $bar_g_red CmdData
execute store result bossbar bar_prep value run scoreboard players get $prepticks CmdData
execute if score $gamestate CmdData matches 2 run bossbar set bar_prep_timer players @a[team=!Lobby]
execute if score $gamestate CmdData matches 2 run bossbar set bar_prep players @a[team=!Lobby]
execute unless score $gamestate CmdData matches 2 run bossbar set bar_prep_timer players
execute unless score $gamestate CmdData matches 2 run bossbar set bar_prep players

#> Show red bars for Red team
execute if score $gamestate CmdData matches 3.. run bossbar set bar_r_main players @a[team=Red]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_r_red players @a[team=Red]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_r_green players @a[team=Red]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_r_timer players @a[team=Red]

#> Show green bars for Green and Spectator teams
execute if score $gamestate CmdData matches 3.. run bossbar set bar_g_main players @a[team=!Red,team=!Lobby]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_g_green players @a[team=!Red,team=!Lobby]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_g_red players @a[team=!Red,team=!Lobby]
execute if score $gamestate CmdData matches 3.. run bossbar set bar_g_timer players @a[team=!Red,team=!Lobby]

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
execute if score $gamestate CmdData matches 2.. run bossbar set bar_lobby_hearts players @a[team=Lobby,gamemode=!spectator,gamemode=!creative]
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_lobby players @a
execute if score $gamestate CmdData matches -1 run bossbar set bar_lobby_hearts players @a[team=!Spectator,gamemode=!spectator,gamemode=!creative]

#> Store correct information and values in the lobby bar
execute if score $gamestate CmdData matches -1 run bossbar set bar_lobby value 0
execute if score $gamestate CmdData matches -1 run bossbar set bar_lobby style notched_6
execute if score $gamestate CmdData matches -1 unless entity @a[tag=ModiOwner] run bossbar set bar_lobby name [{"translate":"chat.confirm","color":"#f089a8","with":[{"translate":"chat.settings_box","color":"#1dc6c7","bold":true}]}]
execute if score $gamestate CmdData matches -1 if entity @a[tag=ModiOwner] run bossbar set bar_lobby name {"translate":"customizer.box_owner","color":"#f089a8","with":[{"selector":"@a[tag=ModiOwner,limit=1]","color":"blue","bold":true}]}

execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby value 0
execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby name {"translate":"lobby.wait.join.both","color":"dark_aqua","with":[{"translate":"lobby.wait.join.green","color":"green"},{"translate":"lobby.wait.join.red","color":"red"}]}

execute if score $gamestate CmdData matches 0 if entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby value 5
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] unless entity @a[team=Red] run bossbar set bar_lobby name {"translate":"lobby.wait.join.single","color":"dark_aqua","with":[{"translate":"lobby.wait.join.red","color":"red"}]}

execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby value 5
execute if score $gamestate CmdData matches 0 unless entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby name {"translate":"lobby.wait.join.single","color":"dark_aqua","with":[{"translate":"lobby.wait.join.green","color":"green"}]}

execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] run bossbar set bar_lobby value 10
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] unless score $GreenReady CmdData matches 1 unless score $RedReady CmdData matches 1 run bossbar set bar_lobby name {"translate":"lobby.wait.ready.both","color":"dark_aqua","with":[{"translate":"lobby.wait.ready.green","color":"green"},{"translate":"lobby.wait.ready.red","color":"red"}]}
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] unless score $GreenReady CmdData matches 1 if score $RedReady CmdData matches 1 run bossbar set bar_lobby name {"translate":"lobby.wait.ready.single","color":"dark_aqua","with":[{"translate":"lobby.wait.ready.green","color":"green"}]}
execute if score $gamestate CmdData matches 0 if entity @a[team=Green] if entity @a[team=Red] if score $GreenReady CmdData matches 1 unless score $RedReady CmdData matches 1 run bossbar set bar_lobby name {"translate":"lobby.wait.ready.single","color":"dark_aqua","with":[{"translate":"lobby.wait.ready.red","color":"red"}]}