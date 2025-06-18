execute unless score $gamestate CmdData matches 0 run return run schedule clear lobby:settings/cancel/counter

scoreboard players remove $mcancelcount CmdData 1

execute if score $mcancelcount CmdData matches 0 run data modify block -56 53 -90 front_text.messages[2] set value '""'
execute if score $mcancelcount CmdData matches 0 run return 1

data modify block -56 53 -90 front_text.messages[2] set value {translate:"customizer.edit.available_in",color:"white",with:[{color:"#ff8585",score:{name:"$mcancelcount",objective:"CmdData"}}]}
schedule function lobby:settings/cancel/counter 1s