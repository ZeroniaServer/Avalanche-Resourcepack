playsound snowglobehit master @a ~ ~ ~ 1 1
particle item{item:{id:"minecraft:snowball",components:{item_model:"minecraft:weapons/snowglobe"}}} ~ ~ ~ 0.1 0.1 0.1 0.1 15 force
particle sweep_attack ~ ~ ~ 0 0 0 0 2 force

summon item_display ~ ~ ~ {Tags:["SnowglobeBase","Snowglobe"],item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/base"}},item_display:"head"}
execute if entity @s[tag=Green] run summon item_display ~ ~ ~ {Tags:["SnowglobeBall","Snowglobe","Green"],item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/ball"}},item_display:"head",Passengers:[{id:"area_effect_cloud",Duration:200000000,Radius:0,custom_particle:{type:"block",block_state:"air"},Tags:["blizzardid","init"]}]}
execute if entity @s[tag=Red] run summon item_display ~ ~ ~ {Tags:["SnowglobeBall","Snowglobe","Red"],item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/ball"}},item_display:"head",Passengers:[{id:"area_effect_cloud",Duration:200000000,Radius:0,custom_particle:{type:"block",block_state:"air"},Tags:["blizzardid","init"]}]}
execute on origin run data modify entity @e[type=area_effect_cloud,tag=blizzardid,tag=init,limit=1] Owner set from entity @s UUID
tag @e[type=area_effect_cloud,tag=blizzardid,tag=init,limit=1] remove init
kill