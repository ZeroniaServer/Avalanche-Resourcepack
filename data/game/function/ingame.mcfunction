scoreboard players add $gametime CmdData 1

# Game related loops

#> Timer
execute if score $gamestate CmdData matches 2 run function game:timer_prep
execute if score $gamestate CmdData matches 3 run function game:timer

#> Store player UUIDs in score
execute as @a[team=!Lobby,team=!Spectator] unless score @s UUIDscore matches -2147483648..2147483647 store result score @s UUIDscore run data get entity @s UUID[0]

#> Bossbars
function bossbars:loop

#> Weapons
function powerups:loop

#> Player logic
function player:health
function player:knockout
execute as @a[predicate=game:void] run function player:voiddeath
function player:base_campfires
execute as @a[team=Red] run function player:firework_belowname
execute as @a[team=Green] run function player:firework_belowname

#> Game logic
function game:avalanche/loop
function game:weakpoint/loop

#> AJ tick
function animated_java:global/on_tick