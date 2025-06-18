kill @e[tag=TranslatorCredit]

summon text_display -78 52.8 -81 {Tags:["TranslatorCredit","GlobeText"],billboard:"center",transformation:{translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},text:[{translate:"credits.translators",color:"white"}],alignment:"center"}

summon minecraft:item_display -78 51.5 -81 {Tags:["TranslatorCredit","Stand"],item_display:"fixed",item:{id:"minecraft:diamond_hoe",count:1,components:{"item_model":"minecraft:custom/globestand"}},width:1f,height:1f}
summon item_display -78 52.3 -80.45 {Tags:["TranslatorCredit","Globe"],Rotation:[0.0f, -22.5f],item_display:"fixed",width:1f,height:1f,item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjBhYmQ1N2Y2NGJhYTg4ZDZjOTgwMTk0YzQ3Y2QxOGI1Y2ViMjI5NWJlNTliZGMxN2E2Njc1NTljYjVkMDg2NyJ9fX0="}]}}}}
summon interaction -78 51.5 -81 {width:0.7f,height:1.3f,Tags:["TranslatorCredit"],response:1b}