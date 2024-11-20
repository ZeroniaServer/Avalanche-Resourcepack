advancement revoke @s only powerups:place_campfire

execute as @e[type=marker,tag=CampfireSpawner,tag=Green] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","CampfireMain","Green"],item:{id:"diamond_hoe",components:{custom_model_data:10}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=marker,tag=CampfireSpawner,tag=Red] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","CampfireMain","Red"],item:{id:"diamond_hoe",components:{custom_model_data:10}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
kill @e[type=marker,tag=CampfireSpawner]