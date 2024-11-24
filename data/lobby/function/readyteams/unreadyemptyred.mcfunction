title @a actionbar ["",{"translate":"lobby.marked_ready.has_been","color":"aqua","with":[{"translate":"lobby.marked_ready.red","color":"red","bold":true},{"translate":"lobby.marked_ready.not","color":"#D20000","bold":true,"underlined":true}]}]
scoreboard players set $RedReady CmdData 0
execute if score $RedReadyFirst CmdData matches 1 if score $GreenReady CmdData matches 1 run scoreboard players set $GreenReadyFirst CmdData 1
scoreboard players set $RedReadyFirst CmdData 0
function lobby:readyteams/refreshsigns