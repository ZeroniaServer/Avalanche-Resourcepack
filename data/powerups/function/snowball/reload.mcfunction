#> Keep track of thrown snowballs
execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] if items entity @s weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run scoreboard players add @s snowballcounter 1
execute as @a[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] if items entity @s weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.mainhand powerups:slow_reload
execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] if items entity @s weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.mainhand powerups:reload
execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] unless score @s snowballcounter matches 1.. if items entity @s weapon.mainhand snowball[minecraft:custom_data~{Slow:1b}] run item modify entity @s weapon.mainhand powerups:reload

execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] if items entity @s weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run scoreboard players add @s snowballcounter 1
execute as @a[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] if items entity @s weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.offhand powerups:slow_reload
execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] if items entity @s weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.offhand powerups:reload
execute as @a[tag=!Knockout,team=!Lobby,team=!Spectator] unless score @s snowballcounter matches 1.. if items entity @s weapon.offhand snowball[minecraft:custom_data~{Slow:1b}] run item modify entity @s weapon.offhand powerups:reload

execute as @a[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] run scoreboard players reset @s snowballcounter

#> Add a delay if player spams snowballs
execute as @a[scores={snowballcounter=1..}] run scoreboard players add @s snowballcharge 1
execute as @a[scores={snowballcharge=10..}] run scoreboard players remove @s snowballcounter 1
execute as @a[scores={snowballcharge=10..}] if score @s snowballcounter matches ..0 run scoreboard players reset @s snowballcounter
execute as @a[scores={snowballcharge=10..}] run scoreboard players reset @s snowballcharge
execute as @a[scores={snowballcharge=1..}] unless score @s snowballcounter matches 1.. run scoreboard players reset @s snowballcharge
execute as @a[scores={snowballcounter=6..}] run scoreboard players reset @s snowballcounter