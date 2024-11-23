#> Lobby
function lobby:loop

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
execute as @e[type=item,tag=!SleighItem] at @s if items entity @s contents *[custom_data~{NoDrop:1b}] run function everytick:nodrop

#> Leave game
execute as @a[scores={leftgame=1..}] run function player:leave

#> Gamestate specific loops
execute if score $gamestate CmdData matches 1 run function lobby:countdown
execute if score $gamestate CmdData matches 2..3 run function game:ingame
execute if score $gamestate CmdData matches 4 run function game:end