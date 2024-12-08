playsound giftboxopen1 master @a ~ ~ ~ 1 0.9
playsound giftboxopen2 master @a ~ ~ ~ 0.4 1.6
playsound giftboxopen2 master @a ~ ~ ~ 0.4 0.6
playsound giftboxopen3 master @a ~ ~ ~ 0.2 1.2

particle item{item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:custom/giftbox"}}} ~ ~0.2 ~ 0.1 0.1 0.1 0.03 30 force
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[1.000,0.455,0.090],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[1.000,0.933,1.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2
particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~.1 ~ 0.1 0.1 0.1 0.1 2

execute on passengers run kill
kill