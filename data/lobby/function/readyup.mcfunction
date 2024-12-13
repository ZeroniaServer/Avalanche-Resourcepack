#> Enable readyup triggers
execute unless score $Countdown CmdData matches 0.. run scoreboard players enable @a[team=Green] readyup
execute unless score $Countdown CmdData matches 0.. run scoreboard players enable @a[team=Red] readyup
execute if score $gamestate CmdData matches 0 if score $Countdown CmdData matches 0.. as @a[team=Green] run trigger readyup set 0
execute if score $gamestate CmdData matches 0 if score $Countdown CmdData matches 0.. as @a[team=Red] run trigger readyup set 0
execute if score $gamestate CmdData matches 0 as @a[team=!Green,team=!Red] run trigger readyup set 0

#> Ready
execute as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] unless score $GreenReady CmdData matches 1 at @s run function lobby:readyteams/readygreen
execute as @a[team=Green,limit=1,sort=random,scores={readyup=903281}] if score $GreenReady CmdData matches 1 at @s run function lobby:readyteams/unreadygreen

execute as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] unless score $RedReady CmdData matches 1 at @s run function lobby:readyteams/readyred
execute as @a[team=Red,limit=1,sort=random,scores={readyup=903281}] if score $RedReady CmdData matches 1 at @s run function lobby:readyteams/unreadyred

#> Reset invalid trigger score
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] unless score @s readyup matches 0 run scoreboard players set @s readyup 0
scoreboard players reset @a[team=!Green,team=!Red] readyup

#> Start countdown
execute if score $gamestate CmdData matches 0 if score $RedReady CmdData matches 1 if score $GreenReady CmdData matches 1 run bossbar set bar_lobby name {"translate":"lobby.countdown.beginning","color":"dark_aqua"}
execute if score $gamestate CmdData matches 0 if score $RedReady CmdData matches 1 if score $GreenReady CmdData matches 1 run scoreboard players set $precountdown CmdData 1
execute if score $gamestate CmdData matches 0 if score $RedReady CmdData matches 1 if score $GreenReady CmdData matches 1 run scoreboard players set $gamestate CmdData 1

#> Ready bossbars
bossbar set bar_ready_r players @a
bossbar set bar_ready_g players @a
bossbar set bar_lobby_hearts players @a[team=!Spectator,gamemode=!spectator,gamemode=!creative]
bossbar set bar_lobby_hearts name [{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]},{"text":"\uE019\uDAFF\uDFFE","color":"#a8a020","shadow_color":[0,0,0,0]}]

execute if score $RedReadyFirst CmdData matches 1 unless score $GreenReady CmdData matches 1 run bossbar set bar_ready_r value 1
execute if score $RedReadyFirst CmdData matches 1 if score $GreenReady CmdData matches 1 run bossbar set bar_ready_r value 2
execute if score $GreenReadyFirst CmdData matches 1 unless score $RedReady CmdData matches 1 run bossbar set bar_ready_g value 1
execute if score $GreenReadyFirst CmdData matches 1 if score $RedReady CmdData matches 1 run bossbar set bar_ready_g value 2
execute unless score $RedReady CmdData matches 1 run bossbar set bar_ready_r value 0
execute unless score $GreenReady CmdData matches 1 run bossbar set bar_ready_g value 0