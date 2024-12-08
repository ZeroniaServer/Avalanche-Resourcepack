scoreboard players add @e[type=item_display,tag=CampfireMain] CmdData 1
scoreboard players add @e[type=item_display,tag=Animator] CmdData 1

execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Log1"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/log2"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Log2"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/log3"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Log3"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/log4"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Coal"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/coal_green"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Coal"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/coal_red"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Flame"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/flame_green"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["CampfireEntity","Animator","Flame"],item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/flame_red"}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute as @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,scores={CmdData=2}] run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,scores={CmdData=3}] at @s run playsound logplace master @a ~ ~ ~ 0.6 1

execute as @e[type=item_display,tag=CampfireEntity,tag=Log1,scores={CmdData=3}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Log1,scores={CmdData=6}] at @s run playsound logplace master @a ~ ~ ~ 0.6 0.8

execute as @e[type=item_display,tag=CampfireEntity,tag=Log2,scores={CmdData=5}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Log2,scores={CmdData=8}] at @s run playsound logplace master @a ~ ~ ~ 0.6 0.8

execute as @e[type=item_display,tag=CampfireEntity,tag=Log3,scores={CmdData=7}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Log3,scores={CmdData=10}] at @s run playsound logplace master @a ~ ~ ~ 0.6 1

execute as @e[type=item_display,tag=CampfireEntity,tag=Coal,scores={CmdData=12}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Coal,scores={CmdData=14}] at @s run playsound coalplace master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=CampfireEntity,tag=Coal,scores={CmdData=14}] at @s run particle block{block_state:coal_block} ~ ~0.2 ~ 0.2 0.1 0.2 0.1 10 force

execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,scores={CmdData=16}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{scale:[0.5f,1.7f,0.5f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=!reignite,scores={CmdData=18}] at @s run playsound campfireignite master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=reignite,scores={CmdData=18}] at @s run playsound campfirelight master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,scores={CmdData=18}] at @s run particle flame ~ ~0.2 ~ 0.2 0.1 0.2 0.1 3 force

execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,scores={CmdData=20}] run data merge entity @s {interpolation_duration:1,start_interpolation:0,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=!reignite,scores={CmdData=22}] at @s run playsound campfirelight master @a ~ ~ ~ 0.6 0.6

execute as @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,tag=Green,scores={CmdData=22}] at @s run data merge entity @s {item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/green_lit"}}}
execute as @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,tag=Red,scores={CmdData=22}] at @s run data merge entity @s {item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/red_lit"}}}

execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=reignite,scores={CmdData=22}] at @s run data merge entity @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,tag=Green,limit=1,distance=..0.1] {item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/green_lit"}}}
execute as @e[type=item_display,tag=CampfireEntity,tag=Flame,tag=reignite,scores={CmdData=22}] at @s run data merge entity @e[type=item_display,tag=CampfireEntity,tag=CampfireMain,tag=Red,limit=1,distance=..0.1] {item:{id:"diamond_hoe",count:1,components:{item_model:"minecraft:campfire/red_lit"}}}

kill @e[type=item_display,tag=CampfireEntity,tag=Animator,scores={CmdData=22..}]