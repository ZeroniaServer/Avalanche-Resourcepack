execute as @a at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
scoreboard players set $gamestate CmdData 0

scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0

scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

say TODO: Settings confirmed, game is ready to play.

fill -62 53 -93 -64 53 -93 air

function bossbars:get_points