#> Kick people without the proper gameID out (also acts on firstjoin players)
execute as @a[team=!Lobby,team=!Spectator] unless score @s gameID = $current gameID run function lobby:joinreset

#> Create a gameID if it somehow doesn't exist anymore
execute unless score $current gameID matches 0..2147483646 run function lobby:settings/gameidcycle

#> Joinpads
execute if score $gamestate CmdData matches 0..3 run function lobby:joinpads

#> Teleporters
function lobby:poles/main

#> Readyup
execute if score $gamestate CmdData matches 0 run function lobby:readyup
execute unless score $gamestate CmdData matches 0 as @a run trigger readyup set 0
execute unless score $gamestate CmdData matches 0..1 run bossbar set bar_ready_r players
execute unless score $gamestate CmdData matches 0..1 run bossbar set bar_ready_g players

#> Modification room
function lobby:settings/loop

#> Bossbars
function bossbars:loop

#> Hide bars if games are inactive
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_prep players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_main players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_green players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_red players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_g_timer players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_main players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_red players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_green players
execute unless score $gamestate CmdData matches 2.. run bossbar set bar_r_timer players