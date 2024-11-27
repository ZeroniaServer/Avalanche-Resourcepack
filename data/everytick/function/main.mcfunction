#> Lobby
function lobby:loop

#> Forced modes
execute if score $forcedmodes CmdData matches 1 as @a run function player:forcedmodes

#> EntityID
execute if score #loaded entityid matches 1 run function entityid:real_tick

#> Effects
effect give @a[predicate=!powerups:hold_icicle] weakness infinite 100 true
effect clear @a[predicate=powerups:hold_icicle] weakness
effect give @a saturation infinite 100 true
effect give @a night_vision infinite 100 true
effect give @a instant_health infinite 100 true
effect give @a fire_resistance infinite 100 true

#> No Drop
execute as @e[type=item,tag=!SleighItem,tag=!mineBarricade] at @s if items entity @s contents *[custom_data~{NoDrop:1b}] run function everytick:nodrop

#> Leave game
execute as @a[scores={leftgame=1..}] run function player:leave

#> Snowman hit
execute as @a[scores={snowmanhit=1..}] run scoreboard players add @s snowmanhit 1
execute as @a[scores={snowmanhit=100..}] run scoreboard players reset @s snowmanhit

#> Void deaths
execute as @a[predicate=game:void] run function player:voiddeath
execute as @a[team=Spectator,predicate=!game:spectatable] run function player:voiddeath

#> Gamestate specific loops
execute if score $gamestate CmdData matches 0..1 if score $GreenReady CmdData matches 1 unless entity @a[team=Green] run function lobby:readyteams/unreadyemptygreen
execute if score $gamestate CmdData matches 0..1 if score $RedReady CmdData matches 1 unless entity @a[team=Red] run function lobby:readyteams/unreadyemptyred
execute if score $gamestate CmdData matches 1 run function lobby:countdown
execute if score $gamestate CmdData matches 2..3 run function game:ingame
execute if score $gamestate CmdData matches 4 run function game:end

#> Kill powerups outside of the arena
execute as @e[type=snowball,predicate=!game:in_arena] on passengers run kill @s
execute as @e[type=snowball,predicate=!game:in_arena] run kill @s
execute as @e[type=item_display,predicate=!game:in_arena,tag=rocketdisplay] run kill @s