#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
scoreboard objectives add playerHP dummy
scoreboard objectives add playerDamage dummy
scoreboard objectives add knocktime dummy
scoreboard objectives add lifetime dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add team dummy
scoreboard objectives add blizzardtime dummy
scoreboard objectives add snowmark dummy
scoreboard objectives add UUIDscore dummy
scoreboard objectives add snowballcharge dummy
scoreboard objectives add snowballcounter dummy
scoreboard objectives add healticks dummy
scoreboard objectives add ambientfxplayer dummy
scoreboard objectives add breakicicle minecraft.broken:minecraft.diamond_hoe
scoreboard objectives add blasttime dummy
scoreboard objectives add giftweight dummy
scoreboard objectives add leftgame minecraft.custom:minecraft.leave_game
scoreboard objectives add leavegame trigger
scoreboard objectives add BarricadeTracker dummy
scoreboard objectives add readyup trigger
scoreboard objectives add modify trigger
scoreboard objectives add hasFireworks dummy
scoreboard objectives modify hasFireworks displayname {"translate":"space.-5"}

#> Static scores
scoreboard players set $100 CmdData 100
scoreboard players set $200 CmdData 200
scoreboard players set $350 CmdData 350
scoreboard players set $1000 CmdData 1000

#> Entity ID
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy
scoreboard objectives add entityid.16 dummy
scoreboard objectives add entityid.17 dummy
scoreboard objectives add entityid.18 dummy
scoreboard objectives add entityid.19 dummy
scoreboard objectives add entityid.20 dummy
scoreboard objectives add entityid.21 dummy
scoreboard objectives add entityid.22 dummy
scoreboard objectives add entityid.23 dummy
scoreboard objectives add entityid.24 dummy
scoreboard objectives add entityid.25 dummy
scoreboard objectives add entityid.26 dummy
scoreboard objectives add entityid.27 dummy
scoreboard objectives add entityid.28 dummy
scoreboard objectives add entityid.29 dummy
scoreboard objectives add entityid.30 dummy
scoreboard objectives add entityid.31 dummy
scoreboard objectives add entityidset dummy
scoreboard players set #loaded entityid 1
scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set -1 const -1

#> Teams
team add Lobby
team add Spectator
team add Green
team add Red
team add noCol
team add Collide

team modify Lobby color blue
team modify Spectator color dark_blue

team modify Green color green
team modify Red color red

team modify noCol collisionRule never
team modify Collide collisionRule pushOwnTeam

#> Sleigh + WASD (thanks Cloud Wolf!)
function powerups:sleigh/init
function wasd:init

#> AJ Init
function animated_java:global/on_load
function animated_java:global/internal/gu/load

#> Lobby worldspawn
setworldspawn -63 52 -95
spawnpoint @a -63 52 -95

#> Gamerules
gamerule mobGriefing false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule naturalRegeneration false
# gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule disableRaids true
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule announceAdvancements false
gamerule doTraderSpawning false
gamerule spectatorsGenerateChunks false
gamerule maxEntityCramming 10000
gamerule freezeDamage true
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule doTileDrops false

#> Join area modifications
fill -90 53 -148 -90 55 -150 green_stained_glass
fill -35 49 -151 -35 51 -149 red_stained_glass
fill -96 58 -145 -94 57 -145 air replace minecraft:barrier
setblock -95 54 -147 air
setblock -34 50 -148 air
setblock -95 54 -147 oak_wall_sign{front_text:{messages:['{"translate":"lobby.leave.1","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger leavegame"}}','{"translate":"lobby.leave.2","color":"aqua"}','{"text":""}','{"text":""}']}}
setblock -34 50 -148 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"lobby.leave.1","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger leavegame"}}','{"translate":"lobby.leave.2","color":"aqua"}','{"text":""}','{"text":""}']}}
fill -85 50 -113 -35 40 -162 minecraft:stripped_cherry_wood[axis=z] replace minecraft:barrel
setblock -66 50 -110 stripped_cherry_wood[axis=z]
setblock -64 50 -111 stripped_cherry_wood[axis=z]
setblock -63 50 -113 stripped_cherry_wood[axis=z]
fill -16 45 -235 -13 47 -237 minecraft:stripped_cherry_wood[axis=y] replace barrel[facing=up]
fill -16 45 -235 -13 47 -237 minecraft:stripped_cherry_wood[axis=z] replace barrel[facing=south]
fill -111 46 -207 -113 47 -205 minecraft:stripped_cherry_wood[axis=y] replace barrel[facing=up]
fill -111 46 -207 -113 47 -205 minecraft:stripped_cherry_wood[axis=z] replace barrel[facing=north]
fill -87 51 -142 -101 57 -156 stripped_cherry_wood[axis=y] replace barrel

#> Bossbars
function bossbars:create