schedule clear lobby:settings/cancel/counter
scoreboard players set $mcancelcount CmdData 10
scoreboard players set $mcancel CmdData -1
data modify block -56 53 -90 front_text.messages[2] set value '{"translate":"customizer.cancel.unavailable","color":"white"}'