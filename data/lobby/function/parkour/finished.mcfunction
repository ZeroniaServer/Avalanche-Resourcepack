#> Chat announcement
execute if entity @s[scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a[team=Lobby] ["",{"translate":"parkour.finished","color":"dark_aqua","with":[{"selector":"@s"},[{"text":"0","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"aqua","bold":true},{"text":":0","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"aqua","bold":true},{"text":".","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"aqua","bold":true}]]}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a[team=Lobby] ["",{"translate":"parkour.finished","color":"dark_aqua","with":[{"selector":"@s"},[{"text":"0","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"aqua","bold":true},{"text":":","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"aqua","bold":true},{"text":".","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"aqua","bold":true}]]}]
execute if entity @s[scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a[team=Lobby] ["",{"translate":"parkour.finished","color":"dark_aqua","with":[{"selector":"@s"},[{"score":{"name":"@s","objective":"parkourMins"},"color":"aqua","bold":true},{"text":":0","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"aqua","bold":true},{"text":".","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"aqua","bold":true}]]}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a[team=Lobby] ["",{"translate":"parkour.finished","color":"dark_aqua","with":[{"selector":"@s"},[{"score":{"name":"@s","objective":"parkourMins"},"color":"aqua","bold":true},{"text":":","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"aqua","bold":true},{"text":".","color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"aqua","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"aqua","bold":true}]]}]

#> Visual/Sound effects
playsound parkourfinish1 master @s ~ ~ ~ 1 1.1
playsound parkourfinish2 master @s ~ ~ ~ 1 1
playsound parkourfinish3 master @s ~ ~ ~ 1 1.3
particle firework ~ ~1 ~ 0 0 0 0.1 100 normal @s
clear @s carrot_on_a_stick
# function lobby:items

#> Personal best
execute if entity @s[tag=!firstParkour] run function lobby:parkour/personalbest
execute if entity @s[tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run function lobby:parkour/personalbest

# TODO Store in leaderboard
# execute if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime > @s finalParkourTime run function lobby:parkour/updatelb

#> Update global jump counter
function lobby:parkour/updatejumps

#> Remove tags
tag @s add firstParkour
tag @s remove inParkour
tag @s remove resettimeonce
tag @s remove finishedParkour