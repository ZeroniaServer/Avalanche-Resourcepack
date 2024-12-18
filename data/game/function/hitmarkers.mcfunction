scoreboard players add @s[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerTimer=1}] times 0 30 5
execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerTimer=1}] title {"text":" "}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=0,HitmarkerTimer=2}] title {"text":"\uE01B","color":"#ff7474"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=0,HitmarkerTimer=3}] title {"text":"\uE01C","color":"#ff7474"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=0,HitmarkerTimer=4}] title {"text":"\uE01D","color":"#ff7474"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=0,HitmarkerTimer=2}] title {"text":"\uE01B","color":"#74ff74"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=0,HitmarkerTimer=3}] title {"text":"\uE01C","color":"#74ff74"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=0,HitmarkerTimer=4}] title {"text":"\uE01D","color":"#74ff74"}

execute unless score $gamestate CmdData matches 4 run scoreboard players set @s[scores={HitmarkerType=0,HitmarkerTimer=5..}] HitmarkerTimer 8
execute at @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 4 run playsound hitmarker_normal master @s ~ ~ ~ 1 1
execute at @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 4 run playsound hitmarker2 master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=1,HitmarkerTimer=2}] title {"text":"\uE01E"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=1,HitmarkerTimer=3}] title {"text":"\uE01F"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=1,HitmarkerTimer=4}] title {"text":"\uE020"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Red,scores={HitmarkerType=1,HitmarkerTimer=5}] title {"text":"\uE021"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=1,HitmarkerTimer=2}] title {"text":"\uE022"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=1,HitmarkerTimer=3}] title {"text":"\uE023"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=1,HitmarkerTimer=4}] title {"text":"\uE024"}
execute unless score $gamestate CmdData matches 4 run title @s[team=Green,scores={HitmarkerType=1,HitmarkerTimer=5}] title {"text":"\uE025"}
execute unless score $gamestate CmdData matches 4 run scoreboard players set @s[scores={HitmarkerType=1,HitmarkerTimer=6..}] HitmarkerTimer 8
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 4 run playsound hitmarker_critical master @s ~ ~ ~ 1 1
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 4 run playsound hitmarker2 master @s ~ ~ ~ 1 1
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 4 run playsound ding master @s ~ ~ ~ 1 2

execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] subtitle {"text":" "}

execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerTimer=8}] title {"text":" "}
execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerTimer=8}] subtitle {"text":" "}
execute unless score $gamestate CmdData matches 4 run title @s[scores={HitmarkerTimer=8}] times 10 70 20

scoreboard players reset @s[scores={HitmarkerTimer=8..}] HitmarkerType
execute unless score @s HitmarkerType matches 0.. run scoreboard players reset @s[scores={HitmarkerTimer=1..}] HitmarkerTimer