#> Get player counts
scoreboard players set $InGreen CmdData 0
scoreboard players set $InRed CmdData 0

execute as @a[team=Green] run scoreboard players add $InGreen CmdData 1
execute as @a[team=Red] run scoreboard players add $InRed CmdData 1

#> Particles
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 50 -150.75 0 1 0 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 50 -148.25 0 1 0 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 51.75 -150 0 0 1 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 49.25 -150 0 0 1 0 3 force

execute if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 54 -147.25 0 1 0 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 54 -149.75 0 1 0 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 53.25 -149 0 0 1 0 3 force
execute if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 55.75 -149 0 0 1 0 3 force

particle trail{color:[1.000,0.000,0.000],target:[-35.0,50.5,-149.5]} -38 50 -150 0.1 1 1 0 1 force
particle trail{color:[0.000,1.000,0.000],target:[-90.0,54.5,-148.5]} -87 54 -149 0.1 1 1 0 1 force

#> Green
execute as @a[team=Lobby,predicate=lobby:joinpad_green,limit=1,sort=random] run tag @s add JoinGreen
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 store result score @s gameID run scoreboard players get $current gameID
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run tp @s @s
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..1 run tp @s -91 53 -149 90 0
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2..3 run tp @s -114 47 -210 -90 0
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run loot give @s loot powerups:shovel
#TODO: maybe a nicer way to give out a fair number of barricades, for now this should do
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run scoreboard players set @s BarricadeTracker 10
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run loot give @s loot powerups:barricade_prep
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 3 run loot give @s loot powerups:snowball

execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinGreen] run team join Green
execute as @a[tag=JoinGreen] run loot replace entity @s armor.chest loot game:chestplate
execute as @a[tag=JoinGreen] run loot replace entity @s armor.legs loot game:leggings
execute as @a[tag=JoinGreen] run loot replace entity @s armor.feet loot game:boots
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..1 run tellraw @a {"translate":"lobby.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.green","color":"green"}]}
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2..3 run tellraw @a {"translate":"lobby.joined.late","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.green","color":"green"}]}

execute as @a[tag=JoinGreen] run scoreboard players set @s fireworkCount 0
tag @a[tag=JoinGreen] remove JoinGreen

#> Red
execute as @a[team=Lobby,predicate=lobby:joinpad_red,limit=1,sort=random] run tag @s add JoinRed
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 store result score @s gameID run scoreboard players get $current gameID
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 run tp @s @s
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..1 run tp @s -34 49 -150 -90 0
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2..3 run tp @s -12 47 -232 90 0
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2 run loot give @s loot powerups:shovel
#TODO: maybe a nicer way to give out a fair number of barricades, for now this should do
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2 run scoreboard players set @s BarricadeTracker 10
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2 run loot give @s loot powerups:barricade_prep
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 3 run loot give @s loot powerups:snowball
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinRed] run team join Red
execute as @a[tag=JoinRed] run loot replace entity @s armor.chest loot game:chestplate
execute as @a[tag=JoinRed] run loot replace entity @s armor.legs loot game:leggings
execute as @a[tag=JoinRed] run loot replace entity @s armor.feet loot game:boots
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..1 run tellraw @a {"translate":"lobby.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.red","color":"red"}]}
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2..3 run tellraw @a {"translate":"lobby.joined.late","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.red","color":"red"}]}
execute as @a[tag=JoinRed] run scoreboard players set @s fireworkCount 0
tag @a[tag=JoinRed] remove JoinRed

#> Leave
scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveTeam
execute as @a[tag=LeaveTeam,team=Green] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"green"}]}
execute as @a[tag=LeaveTeam,team=Red] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"red"}]}
execute as @a[tag=LeaveTeam,team=Spectator] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_spectator","color":"dark_aqua","with":[{"selector":"@s"}]}
execute as @a[tag=LeaveTeam] run function player:leave
execute as @a[tag=LeaveTeam] run tp @s @s
execute as @a[tag=LeaveTeam,tag=WasRed] run tp @s -40 50 -150 -90 0
execute as @a[tag=LeaveTeam,tag=WasGreen] run tp @s -85 54 -149 90 0
execute as @a[tag=LeaveTeam,tag=!WasGreen,tag=!WasRed] run tp @s -65 52 -108 180 0
tag @a[tag=LeaveTeam] remove WasRed
tag @a[tag=LeaveTeam] remove WasGreen
execute as @a[tag=LeaveTeam] if score $gamestate CmdData matches 0..3 at @s run playsound block.beehive.exit master @a ~ ~ ~ 1 1
execute as @a[tag=LeaveTeam] run team join Lobby @s

tag @a[tag=LeaveTeam] remove LeaveTeam