data modify storage cw_wasd Motion set from entity @s Pos
rotate @s ~ ~
execute store result score .rot vehicle run data get entity @s Rotation[0] 100
kill