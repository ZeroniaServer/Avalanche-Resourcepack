scoreboard players add $gametime CmdData 1

# Game related loops

#> Timer
function game:timer

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

#> Game logic
function game:avalanche/loop

#> AJ tick
function animated_java:global/on_tick