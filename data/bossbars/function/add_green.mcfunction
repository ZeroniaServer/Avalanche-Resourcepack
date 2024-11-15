bossbar add bar_g_main {"text":"\uE005","color":"#a8a000"}
bossbar add bar_g_green [{"translate":"space.-170"},{"text":"\uE006"}]
bossbar add bar_g_red [{"translate":"space.170"},{"text":"\uE009"}]

bossbar set bar_g_main color white
bossbar set bar_g_green color green
bossbar set bar_g_red color red

bossbar set bar_g_main max 350
bossbar set bar_g_green max 350
bossbar set bar_g_red max 350

bossbar set bar_g_red value 350

scoreboard players set $bar_g_main CmdData 0