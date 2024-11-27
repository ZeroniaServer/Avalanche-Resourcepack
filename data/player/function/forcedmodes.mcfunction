gamemode adventure @s[team=Lobby,gamemode=!adventure]
gamemode spectator @s[team=Spectator,gamemode=!spectator]

execute unless score $EndTime CmdData matches 100.. run gamemode adventure @s[team=Red,gamemode=!adventure]
execute unless score $EndTime CmdData matches 100.. run gamemode adventure @s[team=Green,gamemode=!adventure]

execute if score $EndTime CmdData matches 100.. run gamemode spectator @s[team=Red,gamemode=!spectator]
execute if score $EndTime CmdData matches 100.. run gamemode spectator @s[team=Green,gamemode=!spectator]