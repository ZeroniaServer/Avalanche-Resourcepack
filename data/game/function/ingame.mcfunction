bossbar set bar_lobby players @a[team=Lobby]
bossbar set bar_lobby value 0
bossbar set bar_lobby style notched_12
bossbar set bar_lobby name {"translate":"lobby.in_progress","color":"green"}

scoreboard players add $gametime CmdData 1

# Game related loops

#> Timer
execute if score $gamestate CmdData matches 2 run function game:timer_prep
execute if score $gamestate CmdData matches 3 run function game:timer

#> Store player UUIDs in score
execute as @a[team=!Lobby,team=!Spectator] unless score @s UUIDscore matches -2147483648..2147483647 store result score @s UUIDscore run data get entity @s UUID[0]

#> Weapons
function powerups:loop

#> Player logic
function player:health
function player:knockout
function player:base_campfires
execute as @a[team=Red] run function player:firework_belowname
execute as @a[team=Green] run function player:firework_belowname

#> Game logic
function game:avalanche/loop
function game:weakpoint/loop

#> End game
execute if score $ticks CmdData matches ..0 unless score $gamestate CmdData matches 4 run function game:end

#> AJ tick
function animated_java:global/on_tick

#> Elf spawning
scoreboard players set $giftcount CmdData 0
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=..22}] run scoreboard players add $giftcount CmdData 1
execute as @e[type=item_display,tag=Giftbox] run scoreboard players add $giftcount CmdData 1

execute if score $gamestate CmdData matches 3 unless score $giftcount CmdData matches 8.. run scoreboard players add $ElfTimer CmdData 1
execute if score $ElfTimer CmdData matches 400 run function powerups:giftbox/spawn
execute if score $ElfTimer CmdData matches 410 if predicate game:5050 run function powerups:giftbox/spawn
execute if score $ElfTimer CmdData matches 420 run function powerups:giftbox/spawn
execute if score $ElfTimer CmdData matches 430 if predicate game:5050 run function powerups:giftbox/spawn
execute if score $ElfTimer CmdData matches 440 run function powerups:giftbox/spawn
execute if score $ElfTimer CmdData matches 440.. run scoreboard players reset $ElfTimer CmdData

#> Main/offhand holding tags
execute as @a[team=!Lobby,team=!Spectator,tag=!barricadeMainhand] if items entity @s weapon.mainhand clay run tag @s add barricadeMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=barricadeMainhand] unless items entity @s weapon.mainhand clay run tag @s remove barricadeMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=!barricadeOffhand] if items entity @s weapon.offhand clay run tag @s add barricadeOffhand
execute as @a[team=!Lobby,team=!Spectator,tag=barricadeOffhand] unless items entity @s weapon.offhand clay run tag @s remove barricadeOffhand

execute as @a[team=!Lobby,team=!Spectator,tag=!campfireMainhand] if items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Campfire:1b}] run tag @s add campfireMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=campfireMainhand] unless items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Campfire:1b}] run tag @s remove campfireMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=!campfireOffhand] if items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Campfire:1b}] run tag @s add campfireOffhand
execute as @a[team=!Lobby,team=!Spectator,tag=campfireOffhand] unless items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Campfire:1b}] run tag @s remove campfireOffhand

execute as @a[team=!Lobby,team=!Spectator,tag=!snowmanMainhand] if items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Snowman:1b}] run tag @s add snowmanMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=snowmanMainhand] unless items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Snowman:1b}] run tag @s remove snowmanMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=!snowmanOffhand] if items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Snowman:1b}] run tag @s add snowmanOffhand
execute as @a[team=!Lobby,team=!Spectator,tag=snowmanOffhand] unless items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Snowman:1b}] run tag @s remove snowmanOffhand

execute as @a[team=!Lobby,team=!Spectator,tag=!sleighMainhand] if items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Sleigh:1b}] run tag @s add sleighMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=sleighMainhand] unless items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Sleigh:1b}] run tag @s remove sleighMainhand
execute as @a[team=!Lobby,team=!Spectator,tag=!sleighOffhand] if items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Sleigh:1b}] run tag @s add sleighOffhand
execute as @a[team=!Lobby,team=!Spectator,tag=sleighOffhand] unless items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Sleigh:1b}] run tag @s remove sleighOffhand

#> Freezing in mountains
tag @a remove inMountains 
execute as @a[team=!Lobby,team=!Spectator] at @s unless entity @s[predicate=!game:red_mountain_player,predicate=!game:green_mountain_player] run tag @s add inMountains
scoreboard players reset @a[tag=!inMountains,scores={mountaintime=1..}] mountaintime
scoreboard players add @a[tag=inMountains] mountaintime 1
execute as @a[tag=inMountains,scores={mountaintime=5}] run scoreboard players add @s[tag=!IFrame] playerDamage 2
execute as @a[tag=inMountains,scores={mountaintime=5},tag=!Knockout] if score @s playerDamage >= @s playerHP run tellraw @a [{"translate":"knockout.mountains","color":"dark_aqua","with":[{"selector":"@s"}]}]
execute as @a[tag=inMountains,tag=!Knockout,scores={mountaintime=5}] run damage @s 1 starve
effect give @a[tag=inMountains,tag=!Knockout] slowness 1 3 true
execute as @a[tag=inMountains,scores={mountaintime=10..}] run scoreboard players reset @s mountaintime