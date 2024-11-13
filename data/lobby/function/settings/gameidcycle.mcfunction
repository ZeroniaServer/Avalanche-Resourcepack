scoreboard objectives remove gameID
scoreboard objectives add gameID dummy
execute store result score $current gameID run random value 0..2147483646