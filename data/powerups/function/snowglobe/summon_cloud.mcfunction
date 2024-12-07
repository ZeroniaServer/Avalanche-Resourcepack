execute if entity @s[tag=Green] run summon item_display ~ ~4.5 ~ {Tags:["Snowglobe","Green","StormCloudMain","init"],brightness:{sky:15,block:15},item_display:"head",item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/cloud_green"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f]}}
execute if entity @s[tag=Red] run summon item_display ~ ~4.5 ~ {Tags:["Snowglobe","Red","StormCloudMain","init"],brightness:{sky:15,block:15},item_display:"head",item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/cloud_red"}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f]}}
execute on passengers run tag @s add transfer
execute on passengers run ride @s dismount
ride @e[type=area_effect_cloud,tag=transfer,limit=1] mount @e[type=item_display,tag=init,limit=1]
execute as @e[type=item_display,tag=init,limit=1] on passengers run tag @s remove transfer 
tag @e[type=item_display,tag=init,limit=1] remove init