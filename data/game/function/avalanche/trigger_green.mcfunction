execute positioned -124 80 -224 run playsound avalanchetrigger master @a ~ ~ ~ 5 1
execute positioned -124 80 -224 run playsound avalanchesnowfall master @a ~ ~ ~ 6 1

summon firework_rocket -122 74 -224 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
summon firework_rocket -125 69 -220 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
summon firework_rocket -122 65 -230 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
summon firework_rocket -119 60 -230 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
summon firework_rocket -117 59 -222 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}

summon marker -122 69 -229 {Tags:["AVSnowStarter","Green","AvalancheEntity"]}

scoreboard players reset $DamageGreen CmdData
scoreboard players reset $red_progress CmdData