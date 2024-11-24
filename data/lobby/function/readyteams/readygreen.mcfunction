playsound readyup master @s ~ ~ ~ 1 0
title @a[team=!Spectator] actionbar ["",{"translate":"lobby.marked_ready","color":"aqua","with":[{"selector":"@s","bold":true},{"translate":"lobby.marked_ready.green","color":"green","bold":true},{"translate":"lobby.marked_ready.ready","color":"#03DE00","bold":true,"underlined":true}]}]
execute if score $GreenReady CmdData matches 0 if score $RedReady CmdData matches 0 run scoreboard players set $GreenReadyFirst CmdData 1
scoreboard players set $GreenReady CmdData 1
function lobby:readyteams/refreshsigns
trigger readyup set 0