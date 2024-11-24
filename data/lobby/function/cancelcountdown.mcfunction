tellraw @a {"translate":"lobby.countdown.canceled","color":"red"}
scoreboard players reset $Countdown CmdData
scoreboard players reset $CountSec CmdData
scoreboard players reset $precountdown CmdData
scoreboard players set $gamestate CmdData 0
bossbar set bar_lobby style progress