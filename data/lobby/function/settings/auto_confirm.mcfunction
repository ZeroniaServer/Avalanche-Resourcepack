fill -90 53 -148 -90 55 -150 minecraft:cyan_stained_glass
fill -35 51 -150 -35 49 -152 pink_stained_glass

scoreboard players reset @a modify
tag @a remove ModiOwner
scoreboard players set $gamestate CmdData 0
# bossbar set bar_lobby players
bossbar set bar_lobby_hearts players
bossbar set bar_ready_r players
bossbar set bar_ready_g players

# bossbar set bar_lobby players @a
# bossbar set bar_ready_r players @a
# bossbar set bar_ready_g players @a
# bossbar set bar_lobby_hearts players @a[team=!Spectator,gamemode=!spectator,gamemode=!creative]
execute if score $gamestate CmdData matches 0 run bossbar set bar_lobby_hearts name [{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]}]

scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0

scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

fill -56 53 -91 -56 54 -89 air

function bossbars:get_points

scoreboard players set $60 CmdData 60
scoreboard players set $20 CmdData 20

execute store result score $ticks CmdData run scoreboard players get $Minutes CmdData
execute store result score $ticks CmdData run scoreboard players operation $ticks CmdData *= $60 CmdData
execute store result score $ticks CmdData run scoreboard players operation $ticks CmdData *= $20 CmdData

execute store result score $prepticks CmdData run scoreboard players get $PrepSeconds CmdData
scoreboard players operation $prepticks CmdData *= $20 CmdData

execute store result bossbar bar_prep value run scoreboard players get $prepticks CmdData
execute store result bossbar bar_prep max run scoreboard players get $prepticks CmdData

bossbar set bar_lobby style progress

function lobby:settings/refreshsigns with storage lobby:customizer

function lobby:readyteams/refreshsigns

setblock -56 53 -90 warped_wall_sign[facing=west]{front_text:{messages:[{text:""},{translate:"customizer.edit",color:"red",bold:true},'',{text:"",click_event:{action:"run_command",command:"/trigger cancelMatch set 1"}}]}}
scoreboard players set $mcancelcount CmdData 0

execute as @a run trigger settings set 0

tag @a remove RequestSettings