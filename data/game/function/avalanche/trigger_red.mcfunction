execute positioned 0 80 -222 run playsound avalanchetrigger master @a ~ ~ ~ 5 1
execute positioned 0 80 -222 run playsound avalanchesnowfall master @a ~ ~ ~ 6 1

summon firework_rocket -2 63 -229 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4521728]}]}}}}
summon firework_rocket -2 63 -229 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4521728]}]}}}}
summon firework_rocket 4 70 -215 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4521728]}]}}}}
summon firework_rocket -4 68 -222 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4521728]}]}}}}
summon firework_rocket -1 65 -214 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4521728]}]}}}}

summon marker -3 68 -212 {Tags:["AVSnowStarter","Red","AvalancheEntity"]}

scoreboard players reset $DamageRed CmdData
scoreboard players reset $green_progress CmdData

scoreboard players add $GreenPoints CmdData 1
function bossbars:get_points