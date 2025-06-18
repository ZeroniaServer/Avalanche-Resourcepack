playsound unready master @s ~ ~ ~ 1 0.6
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{translate:"lobby.marked_ready",color:"aqua",with:[{selector:"@s",bold:true},{translate:"lobby.marked_ready.green",color:"green",bold:true},{translate:"lobby.marked_ready.not",color:"#D20000",bold:true,underlined:true}]}]
scoreboard players set $GreenReady CmdData 0
execute if score $GreenReadyFirst CmdData matches 1 if score $RedReady CmdData matches 1 run scoreboard players set $RedReadyFirst CmdData 1
scoreboard players set $GreenReadyFirst CmdData 0
function lobby:readyteams/refreshsigns