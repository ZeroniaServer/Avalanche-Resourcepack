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