execute if score $gamestate CmdData matches 0 if score $mcancelcount CmdData matches 0 run scoreboard players set $mcancel CmdData 1
execute if score $gamestate CmdData matches 0 if score $mcancelcount CmdData matches 0 run function lobby:settings/cancel/stopper

execute if score $gamestate CmdData matches 0 unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.cannot_edit.seconds","color":"red","with":[{"score":{"name":"$mcancelcount","objective":"CmdData"},"color":"#ff8585","bold":true}]}]
execute if score $gamestate CmdData matches 0 unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 1 run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.cannot_edit.second","color":"red","with":[{"text":"1","color":"#ff8585","bold":true}]}]

execute unless score $gamestate CmdData matches 2.. if score $mcancel CmdData matches -1 run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.cannot_edit.players","color":"red"}]

execute if score $gamestate CmdData matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.cannot_edit.game","color":"red"}]

execute positioned -56 53 -90 run playsound ui.button.click master @s ~ ~ ~ 1 1
scoreboard players reset @s cancelMatch