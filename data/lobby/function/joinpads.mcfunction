#> Get player counts
scoreboard players set $InGreen CmdData 0
scoreboard players set $InRed CmdData 0

execute as @a[team=Green] run scoreboard players add $InGreen CmdData 1
execute as @a[team=Red] run scoreboard players add $InRed CmdData 1

#> Particles
execute if block -35 50 -150 pink_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 50 -150.75 0 1 0 0 3 force
execute if block -35 50 -150 pink_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 50 -148.25 0 1 0 0 3 force
execute if block -35 50 -150 pink_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 51.75 -150 0 0 1 0 3 force
execute if block -35 50 -150 pink_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[1.000f,0.000f,0.000f],scale:1} -36 49.25 -150 0 0 1 0 3 force

execute if block -90 54 -149 cyan_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 54 -147.25 0 1 0 0 3 force
execute if block -90 54 -149 cyan_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 54 -149.75 0 1 0 0 3 force
execute if block -90 54 -149 cyan_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 53.25 -149 0 0 1 0 3 force
execute if block -90 54 -149 cyan_stained_glass if score $gamestate CmdData matches 0..2 run particle dust{color:[0.000f,1.000f,0.000f],scale:1} -89 55.75 -149 0 0 1 0 3 force

execute if block -35 50 -150 pink_stained_glass run particle trail{duration:30,color:[1.000,0.000,0.000],target:[-35.0,50.5,-149.5]} -38 50 -150 0.1 1 1 0 1 force
execute if block -90 54 -149 cyan_stained_glass run particle trail{duration:30,color:[0.000,1.000,0.000],target:[-90.0,54.5,-148.5]} -87 54 -149 0.1 1 1 0 1 force

#> Block off portals
execute if score $InGreen CmdData > $InRed CmdData run fill -90 53 -148 -90 55 -150 minecraft:light_gray_stained_glass
execute if score $InGreen CmdData <= $InRed CmdData run fill -90 53 -148 -90 55 -150 minecraft:cyan_stained_glass
execute if score $InRed CmdData > $InGreen CmdData run fill -35 49 -151 -35 51 -149 minecraft:light_gray_stained_glass
execute if score $InRed CmdData <= $InGreen CmdData run fill -35 49 -151 -35 51 -149 minecraft:pink_stained_glass

#> Green
execute as @a[team=Lobby,predicate=lobby:joinpad_green,limit=1,sort=random] unless score $InGreen CmdData > $InRed CmdData unless score $InGreen CmdData >= $MaxTeamSize CmdData unless function lobby:nomidgamejoin if score $gamestate CmdData matches 0..3 run tag @s add JoinGreen
execute if score $InGreen CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,predicate=lobby:joinpad_green,tag=!tryJoinGreen] run function lobby:portals/green/full
execute unless score $InGreen CmdData >= $MaxTeamSize CmdData if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. as @a[team=Lobby,predicate=lobby:joinpad_green,tag=!tryJoinGreen] run function lobby:portals/green/full
execute unless function lobby:nomidgamejoin if score $InGreen CmdData > $InRed CmdData as @a[team=Lobby,predicate=lobby:joinpad_green,tag=!tryJoinGreen] run function lobby:portals/green/imbalanced
execute as @a[tag=JoinGreen] store result score @s gameID run scoreboard players get $current gameID
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run tp @s @s
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..1 run tp @s -91 53 -149 90 0
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2..3 run tp @s -114 47 -210 -90 0
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run loot give @s loot powerups:shovel
#TODO: maybe a nicer way to give out a fair number of barricades, for now this should do
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run scoreboard players set @s BarricadeTracker 10
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2 run loot give @s loot powerups:barricade_prep
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 3 run loot give @s loot powerups:snowball

execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run team join Green
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.chest loot game:chestplate
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.legs loot game:leggings
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.feet loot game:boots
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 0..1 run tellraw @a {"translate":"lobby.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.green","color":"green"}]}
execute as @a[tag=JoinGreen] if score $gamestate CmdData matches 2..3 run tellraw @a {"translate":"lobby.joined.late","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.green","color":"green"}]}

execute as @a[tag=JoinGreen] run scoreboard players set @s fireworkCount 0
tag @a[tag=JoinGreen] remove JoinGreen
tag @a[tag=tryJoinGreen,predicate=!lobby:joinpad_green] remove tryJoinGreen

#> Red
execute as @a[team=Lobby,predicate=lobby:joinpad_red,limit=1,sort=random] unless score $InRed CmdData > $InGreen CmdData unless score $InRed CmdData >= $MaxTeamSize CmdData unless function lobby:nomidgamejoin if score $gamestate CmdData matches 0..3 run tag @s add JoinRed
execute if score $InRed CmdData >= $MaxTeamSize CmdData as @a[team=Lobby,predicate=lobby:joinpad_red,tag=!tryJoinRed] run function lobby:portals/red/full
execute unless score $InRed CmdData >= $MaxTeamSize CmdData if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. as @a[team=Lobby,predicate=lobby:joinpad_red,tag=!tryJoinRed] run function lobby:portals/red/full
execute unless function lobby:nomidgamejoin if score $InRed CmdData > $InGreen CmdData as @a[team=Lobby,predicate=lobby:joinpad_red,tag=!tryJoinRed] run function lobby:portals/red/imbalanced
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
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 run team join Red
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.chest loot game:chestplate
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.legs loot game:leggings
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..3 run loot replace entity @s armor.feet loot game:boots
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 0..1 run tellraw @a {"translate":"lobby.joined","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.red","color":"red"}]}
execute as @a[tag=JoinRed] if score $gamestate CmdData matches 2..3 run tellraw @a {"translate":"lobby.joined.late","color":"dark_aqua","with":[{"selector":"@s","color":"blue"},{"translate":"lobby.joined.red","color":"red"}]}
execute as @a[tag=JoinRed] run scoreboard players set @s fireworkCount 0
tag @a[tag=JoinRed] remove JoinRed
tag @a[tag=tryJoinRed,predicate=!lobby:joinpad_red] remove tryJoinRed

#> Leave
scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveTeam
execute as @a[tag=LeaveTeam,team=Green] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"green"}]}
execute as @a[tag=LeaveTeam,team=Red] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_team","color":"dark_aqua","with":[{"selector":"@s","color":"red"}]}
execute as @a[tag=LeaveTeam,team=Spectator] if score $gamestate CmdData matches 0..3 at @s run tellraw @a {"translate":"lobby.left_spectator","color":"dark_aqua","with":[{"selector":"@s","color":"blue"}]}
execute as @a[tag=LeaveTeam,team=!] run function player:leave
execute as @a[tag=LeaveTeam] run tp @s @s
execute unless entity @a[team=Red] unless entity @a[team=Green] if entity @e[type=marker,tag=bs.persistent,limit=1] if score $gamestate CmdData matches 2.. run tellraw @a ["\n",{"translate":"game.no_players","color":"red"}]
execute unless entity @a[team=Red] unless entity @a[team=Green] if score $gamestate CmdData matches 2.. if loaded 0 0 0 run function game:forcestop
execute as @a[tag=LeaveTeam] run gamemode adventure @s
execute as @a[tag=LeaveTeam,tag=WasRed] if score $gamestate CmdData matches 0.. run tp @s -40 50 -150 -90 0
execute as @a[tag=LeaveTeam,tag=WasGreen] if score $gamestate CmdData matches 0.. run tp @s -85 54 -149 90 0
execute as @a[tag=LeaveTeam,tag=WasSpectator] run tp @s -65 52 -108 180 0
tag @a[tag=LeaveTeam] remove WasRed
tag @a[tag=LeaveTeam] remove WasGreen
execute as @a[tag=LeaveTeam] if score $gamestate CmdData matches 0..3 at @s run playsound block.beehive.exit master @a ~ ~ ~ 1 1
execute as @a[tag=LeaveTeam] run team join Lobby @s
tag @a[tag=LeaveTeam] remove LeaveTeam

#> Servermode trigger commands
#Green
execute if score $servermode CmdData matches 1 run scoreboard players enable @a joingreen
execute unless score $servermode CmdData matches 1 run trigger joingreen set 0

execute if score $gamestate CmdData matches 0..1 unless score $InGreen CmdData > $InRed CmdData unless score $InGreen CmdData >= $MaxTeamSize CmdData run tag @a[team=!Green,team=!Red,scores={joingreen=1..}] add JoinGreen
execute if score $gamestate CmdData matches 2..3 unless score $NoMidgameJoins CmdData matches 1 unless score $InGreen CmdData > $InRed CmdData unless score $InGreen CmdData >= $MaxTeamSize CmdData run tag @a[team=!Green,team=!Red,scores={joingreen=1..}] add JoinGreen
execute if score $gamestate CmdData matches 0..1 unless score $InGreen CmdData >= $InRed CmdData unless score $InGreen CmdData >= $MaxTeamSize CmdData run tag @a[team=Red,scores={joingreen=1..}] add JoinGreen
execute if score $gamestate CmdData matches 2..3 unless score $NoMidgameJoins CmdData matches 1 unless score $InGreen CmdData >= $InRed CmdData unless score $InGreen CmdData >= $MaxTeamSize CmdData run tag @a[team=Red,scores={joingreen=1..}] add JoinGreen
execute if score $gamestate CmdData matches 0..3 if score $InGreen CmdData >= $MaxTeamSize CmdData as @a[team=!Green,scores={joingreen=1..},tag=!tryJoinGreen] run function lobby:portals/green/full
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2..3 as @a[team=!Green,scores={joingreen=1..},tag=!tryJoinGreen] run function lobby:portals/green/full
execute if score $gamestate CmdData matches 0..3 if score $InGreen CmdData > $InRed CmdData as @a[team=!Green,scores={joingreen=1..},tag=!tryJoinGreen] run function lobby:portals/green/imbalanced

execute unless score $gamestate CmdData matches 0..3 run tellraw @a[scores={joingreen=1..}] [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute if score $gamestate CmdData matches 0..3 if score $InGreen CmdData = $InRed CmdData run tellraw @a[team=Red,scores={joingreen=1..}] [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute as @a[team=Green,scores={joingreen=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_joined","color":"red"}]

scoreboard players reset @a[scores={joingreen=1..}] joingreen

#Red
execute if score $servermode CmdData matches 1 run scoreboard players enable @a joinred
execute unless score $servermode CmdData matches 1 run trigger joinred set 0

execute if score $gamestate CmdData matches 0..1 unless score $InRed CmdData > $InGreen CmdData unless score $InRed CmdData >= $MaxTeamSize CmdData run tag @a[team=!Red,team=!Green,scores={joinred=1..}] add JoinRed
execute if score $gamestate CmdData matches 2..3 unless score $NoMidgameJoins CmdData matches 1 unless score $InRed CmdData >= $InGreen CmdData unless score $InRed CmdData >= $MaxTeamSize CmdData run tag @a[team=!Red,team=!Green,scores={joinred=1..}] add JoinRed
execute if score $gamestate CmdData matches 0..1 unless score $InRed CmdData > $InGreen CmdData unless score $InRed CmdData >= $MaxTeamSize CmdData run tag @a[team=Green,scores={joinred=1..}] add JoinRed
execute if score $gamestate CmdData matches 2..3 unless score $NoMidgameJoins CmdData matches 1 unless score $InRed CmdData >= $InGreen CmdData unless score $InRed CmdData >= $MaxTeamSize CmdData run tag @a[team=Green,scores={joinred=1..}] add JoinRed
execute if score $gamestate CmdData matches 0..3 if score $InRed CmdData >= $MaxTeamSize CmdData as @a[team=!Red,scores={joinred=1..},tag=!tryJoinRed] run function lobby:portals/red/full
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2..3 as @a[team=!Red,scores={joinred=1..},tag=!tryJoinRed] run function lobby:portals/red/full
execute if score $gamestate CmdData matches 0..3 if score $InRed CmdData > $InGreen CmdData as @a[team=!Red,scores={joinred=1..},tag=!tryJoinRed] run function lobby:portals/red/imbalanced

execute unless score $gamestate CmdData matches 0..3 run tellraw @a[scores={joinred=1..}] [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute if score $gamestate CmdData matches 0..3 if score $InRed CmdData = $InGreen CmdData run tellraw @a[team=Green,scores={joinred=1..}] [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute as @a[team=Red,scores={joinred=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_joined","color":"red"}]

scoreboard players reset @a[scores={joinred=1..}] joinred

#Spectator
execute if score $servermode CmdData matches 1 run scoreboard players enable @a spectate
execute unless score $servermode CmdData matches 1 run trigger spectate set 0

execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 4 run tag @a[team=!Spectator,scores={spectate=1..}] add WarpSpectate

execute unless score $gamestate CmdData matches 0..3 as @a if score @s spectate matches 1.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_spectate","color":"red"}]
execute as @a[team=Spectator,scores={spectate=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_spectating","color":"red"}]

scoreboard players reset @a[scores={spectate=1..}] spectate