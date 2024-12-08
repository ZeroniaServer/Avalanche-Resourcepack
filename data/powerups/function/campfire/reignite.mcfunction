scoreboard players remove @s CmdData 500
tag @s remove Extinguish

execute at @s[tag=Green] run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Flame","reignite","init"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/flame_green"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute at @s[tag=Red] run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Flame","reignite","init"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/flame_red"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players add @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=reignite,tag=init,limit=1] CmdData 15
tag @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=reignite,tag=init,limit=1] remove init