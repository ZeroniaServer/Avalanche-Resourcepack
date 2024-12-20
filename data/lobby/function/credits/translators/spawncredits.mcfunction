tag @e[tag=TranslatorCredit,tag=Credit] add Old
scoreboard players reset @e[tag=TranslatorCredit,tag=Old] CmdData

#> Page 1
#ZeroIceBear - Chinese
execute if score $TranslatorPage CmdData matches 1 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 1 run item replace entity @e[type=item_display,tag=Credit1,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;2009721405,-2095561811,-1075379032,1294848694]}]
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"ZeroIceBear","color":"#FFAA00"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_cn:","color":"white"}]',alignment:"center"}
#Shirowh_ - Spanish
execute if score $TranslatorPage CmdData matches 1 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 1 run item replace entity @e[type=item_display,tag=Credit2,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;-1533562451,550719413,-1348927752,-160709537]}]
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Shirowh_","color":"#ffff00"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_es:","color":"white"}]',alignment:"center"}
#Armero - Spanish
execute if score $TranslatorPage CmdData matches 1 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 1 run item replace entity @e[type=item_display,tag=Credit3,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;1935623980,767770881,-1801401555,-1824800623]}]
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Armero","color":"gold"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_es:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 1 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[1/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

#> Page 2
#Tai_zazanek - Japanese
execute if score $TranslatorPage CmdData matches 2 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 2 run item replace entity @e[type=item_display,tag=Credit1,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;483675371,1918650750,-1877476915,1372624576]}]
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Tai_zazanek","color":"#c0c0c0"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_jp:","color":"white"}]',alignment:"center"}
#Ostensvig - Norwegian
execute if score $TranslatorPage CmdData matches 2 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 2 run item replace entity @e[type=item_display,tag=Credit2,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;-1282859003,-1903145212,-2110567181,371897253]}]
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Ostensvig","color":"#c0c0c0"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_no:","color":"white"}]',alignment:"center"}
#Stuffy - Pirate Speak
execute if score $TranslatorPage CmdData matches 2 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 2 run item replace entity @e[type=item_display,tag=Credit3,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;754748853,1911377587,-1429384264,-1409327390]}]
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Stuffy","color":"aqua"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":pirate_flag:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 2 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[2/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

#> Page 3
#Evtema3 - Upsidedown English
execute if score $TranslatorPage CmdData matches 3 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 3 run item replace entity @e[type=item_display,tag=Credit1,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;1143768566,1044072941,-1808662431,483304317]}]
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Evtema3","color":"red"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_au:","color":"white"}]',alignment:"center"}
#? - ?
execute if score $TranslatorPage CmdData matches 3 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 3 run item replace entity @e[type=item_display,tag=Credit2,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;1617833968,-310949822,-1653808685,840726584]}]
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"?"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":question:","color":"white"}]',alignment:"center"}
#? - ?
execute if score $TranslatorPage CmdData matches 3 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed"}
execute if score $TranslatorPage CmdData matches 3 run item replace entity @e[type=item_display,tag=Credit3,tag=Skull,tag=!Old,limit=1] contents with player_head[profile={id:[I;1617833968,-310949822,-1653808685,840726584]}]
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"?"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":question:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 3 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[3/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

execute as @e[tag=Name,tag=!Old] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f]}}



##> Template
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Question"}}}}
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Question"}}}}
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -78 51.8 -82.3 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Question"}}}}
##Globe Text
#execute if score $TranslatorPage CmdData matches 69 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[0/0]","color":"white"}]'}