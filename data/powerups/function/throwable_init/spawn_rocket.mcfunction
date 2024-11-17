$summon item_display ~ ~ ~ {Tags:["rocketdisplay","init"],item:{id:"snowball",count:1,components:{custom_model_data:$(c)}},Rotation:[$(rotX)f,$(rotY)f],transformation:{translation:[0.0,0.0,0.5],scale:[1,1,1],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
ride @e[type=item_display,tag=rocketdisplay,tag=init,limit=1] mount @s
execute on passengers run tag @s remove init