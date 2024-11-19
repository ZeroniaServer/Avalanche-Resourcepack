data modify entity @s Pos set from storage avalanche:rocket mot
$execute at @s run tp @s ~$(motX) ~$(motY) ~$(motZ)
data modify storage avalanche:rocket mot set from entity @s Pos
execute positioned 0. 0 0. facing entity @s feet run rotate @s ~ ~
data modify storage avalanche:rocket rot set from entity @s Rotation
kill