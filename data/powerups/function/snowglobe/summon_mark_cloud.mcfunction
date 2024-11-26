tag @s add SnowMarkCloud
$scoreboard players set @s UUIDscore $(uuid)
data merge entity @s {teleport_duration:1,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,1.0f,0.0f]},item:{id:"minecraft:diamond_hoe",components:{custom_model_data:7}}}