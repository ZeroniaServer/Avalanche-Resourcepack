scoreboard players add @e[type=marker,tag=AVSnowStarter] CmdData 1
scoreboard players add @e[type=marker,tag=AvalancheEntity,tag=SnowEmitter] CmdData 1
scoreboard players add @e[type=block_display,tag=AvalancheEntity,tag=SnowBlockDisplay] CmdData 1
scoreboard players add @e[type=block_display,tag=AvalancheEntity,tag=SecondarySnowBlockDisplay] CmdData 1

execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=1}] run scoreboard players set $greenflicker CmdData 0
execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=1}] run scoreboard players set $redflicker CmdData 0
execute if entity @e[type=marker,tag=AVSnowStarter,tag=Green,limit=1] run scoreboard players add $greenflicker CmdData 1
execute if entity @e[type=marker,tag=AVSnowStarter,tag=Red,limit=1] run scoreboard players add $redflicker CmdData 1

# mountain font animation
scoreboard players set #greenavs CmdData 0
execute if entity @e[type=marker,tag=AVSnowStarter,tag=Green] if score $greenflicker CmdData matches ..26 run scoreboard players set #greenavs CmdData 1
scoreboard players set #redavs CmdData 0
execute if entity @e[type=marker,tag=AVSnowStarter,tag=Red] if score $redflicker CmdData matches ..26 run scoreboard players set #redavs CmdData 1

execute if score #redavs CmdData matches 1 if score #greenavs CmdData matches 0 run function game:avalanche/fontanimred
execute if score #greenavs CmdData matches 1 if score #redavs CmdData matches 0 run function game:avalanche/fontanimgreen
scoreboard players set #bothavs CmdData 0
execute if score #redavs CmdData matches 1 if score #greenavs CmdData matches 1 run scoreboard players set #bothavs CmdData 1
execute if score #bothavs CmdData matches 1 run function game:avalanche/fontanimboth
execute unless score #bothavs CmdData matches 1 run scoreboard players reset #bothflicker
execute unless score #bothavs CmdData matches 1 unless score $redflicker CmdData matches 1..25 unless score $greenflicker CmdData matches 1..25 unless data storage game:data {mountain:'{"text":"\\uE005","color":"#a8a000"}'} run function game:avalanche/resetfont

execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~-5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-90.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~ ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-75.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-60.0f,0.0f]}

execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[90.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~ ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[105.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~-5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[120.0f,0.0f]}


execute as @e[type=block_display,tag=SnowBlockDisplay,tag=New] at @s run function game:avalanche/blockdisplay with storage avalanche:snow
execute as @e[type=block_display,tag=SecondarySnowBlockDisplay,tag=New] at @s run function game:avalanche/secondaryblockdisplay with storage avalanche:snow
execute as @e[type=marker,tag=AVSnowStarter,scores={CmdData=1..40}] at @s run function game:avalanche/summonsnowblock

function game:avalanche/snowflakeparticle
function game:avalanche/snowbreakparticle
function game:avalanche/icebreakparticle

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..35}] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..20}] at @s if block ~ ~-1 ~ #game:air run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..20}] at @s if block ~ ~-1 ~ #game:air run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=21..30}] at @s run tp @s ~ ~0.5 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=31..35}] at @s run tp @s ~ ~-1 ~

execute as @e[type=marker,tag=SnowEmitter,limit=2,sort=random] at @s run function game:avalanche/summonsecondarysnowblock

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=10..35},limit=1,sort=random] at @s run playsound avalanchesnowfall2 master @a ~ ~ ~ 2 0
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=10..35},limit=1,sort=random] at @s run playsound avalanchesnowfall3 master @a ~ ~ ~ 2 0

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle falling_dust{block_state:"minecraft:powder_snow"} ~ ~ ~ 4 1 4 0.1 20 force
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle snowflake ~ ~ ~ 4 1 4 0.1 50 force
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle dust{color:[1.000,1.000,1.000],scale:4} ~ ~ ~ 4 1 4 0.1 5 force

kill @e[type=marker,tag=AVSnowStarter,scores={CmdData=60..}]
kill @e[type=marker,tag=SnowEmitter,scores={CmdData=36..}]
kill @e[type=block_display,tag=SnowBlockDisplay,scores={CmdData=60..}]
kill @e[type=block_display,tag=SecondarySnowBlockDisplay,scores={CmdData=20..}]

#> Damage players
execute as @e[type=marker,tag=SnowEmitter] at @s as @e[type=item_display,tag=Snowman,tag=Spawned,tag=!Dying,distance=..5] at @s run function powerups:snowman/kill
execute as @e[type=marker,tag=SnowEmitter] at @s run scoreboard players set @e[type=item_display,tag=CampfireMain,scores={CmdData=22..1199},distance=..5] CmdData 1200
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=!wasd:is_mounted,tag=!avdamaged,tag=!IFrame] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] run scoreboard players add @s playerDamage 8
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=!wasd:is_mounted,tag=!avdamaged,tag=!IFrame] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] run damage @s 1 freeze
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=!wasd:is_mounted,tag=!avdamaged,tag=!IFrame] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] run effect give @s slowness 2 5 true
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=!wasd:is_mounted,tag=!avdamaged,tag=!IFrame] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] run tag @s add avdamaged
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=!wasd:is_mounted,tag=avdamaged,tag=!IFrame] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] if score @s playerDamage >= @s playerHP run tellraw @a {"translate":"knockout.avalanche","color":"dark_aqua","with":[{"selector":"@s"}]}

#> Avalanche damage cooldown
scoreboard players add @a[tag=avdamaged] blizzardtime 1
tag @a[scores={blizzardtime=20..}] remove avdamaged
scoreboard players reset @a[scores={blizzardtime=20..}] blizzardtime


#> Sleigh surfing
execute as @e[type=turtle,predicate=game:on_ground,tag=!Surf] at @s if entity @e[type=marker,tag=SnowEmitter,distance=..5] run function powerups:sleigh/surf