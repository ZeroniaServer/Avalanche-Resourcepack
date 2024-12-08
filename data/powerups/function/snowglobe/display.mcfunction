scoreboard players add @s CmdData 1

#> Kill the base
execute at @s[tag=SnowglobeBase,scores={CmdData=40..}] run particle item{item:{id:"minecraft:diamond_hoe",components:{item_model:"minecraft:snowglobe/base"}}} ~ ~ ~ 0.1 0.1 0.1 0.1 20 force
execute at @s[tag=SnowglobeBase,scores={CmdData=40..}] run playsound snowglobebasebreak master @a ~ ~ ~ 1 2
kill @s[tag=SnowglobeBase,scores={CmdData=40..}]

#> Ball functions
execute if entity @s[tag=SnowglobeBall] run function powerups:snowglobe/ball

#> Cloud Main functions
execute if entity @s[tag=StormCloudMain] run function powerups:snowglobe/cloud_main