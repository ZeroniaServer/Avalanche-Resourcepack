execute on origin at @s anchored eyes positioned 0. 0. 0. positioned ^ ^ ^1.5 summon marker run function powerups:throwable_init/calc_mot
data modify entity @s Motion set from storage avalanche:rocket mot
execute on passengers run data modify entity @s Motion set from storage avalanche:rocket mot
tag @s add AirToggle