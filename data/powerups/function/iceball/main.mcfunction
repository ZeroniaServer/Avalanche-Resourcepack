execute as @e[type=arrow,tag=Iceball,tag=Green] at @s unless entity @a[team=Red,tag=!Knockout,distance=..2.5] run scoreboard players add @s CmdData 1
execute as @e[type=arrow,tag=Iceball,tag=Red] at @s unless entity @a[team=Green,tag=!Knockout,distance=..2.5] run scoreboard players add @s CmdData 1

execute as @e[type=arrow,tag=Iceball,scores={CmdData=15..}] at @s run particle block_crumble{block_state:packed_ice} ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=arrow,tag=Iceball,scores={CmdData=15..}] at @s run particle splash ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=arrow,tag=Iceball,scores={CmdData=15..}] at @s run playsound iceballhit master @a ~ ~ ~ 1.4 2
execute as @e[type=arrow,tag=Iceball,scores={CmdData=15..}] on passengers run kill @s
execute as @e[type=arrow,tag=Iceball,scores={CmdData=15..}] on vehicle run kill @s

kill @e[type=arrow,tag=Iceball,scores={CmdData=15..}]