function game:forcestop
tag @a add LeaveGame
scoreboard players reset * playerUUID
function arenaclear:reset
function lobby:settings/defaults
function lobby:parkour/resethighscore
function entityid:flush
function debug:setup
function debug:spawnfix
scoreboard players reset $servermode CmdData
scoreboard players set $forcedmodes CmdData 1