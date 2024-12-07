function game:forcestop
tag @a add LeaveGame
scoreboard players reset * playerUUID
function arenaclear:reset
function lobby:settings/defaults
function lobby:parkour/resethighscore
function entityid:flush
function debug:setup
forceload remove -30000000 1600
function #bs.math:unload
function #bs.math:load
scoreboard players reset $servermode CmdData
scoreboard players set $forcedmodes CmdData 1