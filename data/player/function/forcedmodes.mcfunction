gamemode adventure @s[team=Lobby,gamemode=!adventure]
gamemode spectator @s[team=Spectator,gamemode=!spectator]

execute unless score $End CmdData matches 150.. run gamemode adventure @s[team=Red,gamemode=!adventure]
execute unless score $End CmdData matches 150.. run gamemode adventure @s[team=Green,gamemode=!adventure]

execute if score $End CmdData matches 150.. run gamemode spectator @s[team=Red,gamemode=!spectator]
execute if score $End CmdData matches 150.. run gamemode spectator @s[team=Green,gamemode=!spectator]