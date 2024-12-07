$summon item_display ~ ~ ~ {Tags:["rocketdisplay","init"],item:{id:"snowball",count:1,components:{item_model:"minecraft:weapons/rocket_$(team)"}},Rotation:[$(rotX)f,$(rotY)f],item_display:"head",teleport_duration:3}
ride @e[type=item_display,tag=rocketdisplay,tag=init,limit=1] mount @s
execute on passengers run tag @s remove init