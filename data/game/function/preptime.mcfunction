scoreboard players add $PrepTime CmdData 1
execute if score $PrepTime CmdData matches 1 run title @s title "TODO: Prep main"
execute if score $PrepTime CmdData matches 1 run title @s title "TODO: Prep sub"

#> TODO: Store variants of prep time config with reduced timings for prep-end countdown.

#> TODO: Split barricades among players evenly no matter team sizes. Based around settings-board config

#> TODO: Set up a temporary bossbar specifically for the prep phase. Store settings-board config for prep time.

#> TODO: Destroy skirmish-wall structure, place back missing arena sections (ice flooring)

#> End prep phase, swap to main game phase (state 3)
execute if score $PrepTime CmdData = $PrepTimeConfig CmdData run scoreboard players set $gamestate CmdData 3