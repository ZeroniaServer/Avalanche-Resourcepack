function game:forcestop
scoreboard players set $gamestate CmdData -1

fill -56 53 -91 -56 54 -89 air
setblock -56 54 -91 cherry_wall_sign[facing=west]
setblock -56 54 -90 warped_wall_sign[facing=west]
setblock -56 54 -89 warped_wall_sign[facing=west]

setblock -56 53 -91 cherry_wall_sign[facing=west]
setblock -56 53 -89 warped_wall_sign[facing=west]

function lobby:settings/refreshsigns with storage lobby:customizer
schedule clear lobby:settings/cancel/counter

fill -90 53 -148 -90 55 -150 minecraft:light_gray_stained_glass
fill -35 51 -150 -35 49 -152 light_gray_stained_glass