$scoreboard players display numberformat @s[team=Red] fireworkCount fixed [{"text":"\uE00D"},{"translate":"space.1"},{"text":"$(player_fireworks) ","color":"$(color)"}]
$scoreboard players display numberformat @s[team=Green] fireworkCount fixed [{"text":"\uE00E"},{"translate":"space.1"},{"text":"$(player_fireworks) ","color":"$(color)"}]

scoreboard objectives modify fireworkCount displayname {"translate":"space.-5"}