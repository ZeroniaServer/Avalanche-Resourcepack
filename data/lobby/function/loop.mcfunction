#> Kick people without the proper gameID out (also acts on firstjoin players)
execute as @a[team=!Lobby,team=!Spectator] unless score @s gameID = $current gameID run function lobby:joinreset

#> Create a gameID if it somehow doesn't exist anymore
execute unless score $current gameID matches 0..2147483646 run function lobby:settings/gameidcycle

#> Joinpads
function lobby:joinpads

#> Readyup
execute if score $gamestate CmdData matches 0 run function lobby:readyup