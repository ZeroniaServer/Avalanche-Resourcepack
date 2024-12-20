scoreboard players set $mcancelcount CmdData 10
data modify block -56 53 -90 front_text.messages[2] set value '{"translate":"customizer.edit.available_in","color":"white","with":[{"text":"10","color":"#ff8585"}]}'
scoreboard players reset $mcancel CmdData
schedule function lobby:settings/cancel/counter 1s