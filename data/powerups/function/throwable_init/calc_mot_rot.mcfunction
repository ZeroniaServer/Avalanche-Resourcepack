#> Overwrite motion

# tp @s ^ ^ ^2
data modify storage avalanche:rocket mot set from entity @s Pos

# # data modify entity @s Pos set from storage avalanche:rocket mot
# # $execute at @s run tp @s ~$(motX) ~$(motY) ~$(motZ)
rotate @s ~ ~
# # data modify storage avalanche:rocket mot set from entity @s Pos
# execute positioned 0. 0 0. run rotate @s ~ ~
data modify storage avalanche:rocket rot set from entity @s Rotation
kill