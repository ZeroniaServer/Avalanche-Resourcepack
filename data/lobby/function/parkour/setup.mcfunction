# Jump counter
scoreboard objectives add parkourJumps minecraft.custom:minecraft.jump

# Setup display
kill @e[tag=parkour_display]
summon text_display -57.5 52.8 -72.7 {shadow:1b,alignment:"center",Tags:["parkour_display"],background:16777215,transformation:{translation:[0.0, 0.0, 0.0],left_rotation:[0f, 0f, 0f, 1f],right_rotation:[0f, 0f, 0f, 1f],scale: [0.8, 0.8, 0.8]}}
data merge entity @e[type=text_display,limit=1,tag=parkour_display] {alignment:"center",text:'["",{"bold":true,"color":"yellow","translate":"parkour.display.title"},{"text":"\\n\\n"},{"color":"gray","translate":"parkour.display.line1"},{"text":"\\n"},{"color":"gray","translate":"parkour.display.line2"}]'}
summon text_display -57.5 51.7 -72.7 {alignment:"center",Tags:["parkour_display"],text:'"                                         \\n\\n\\n\\n\\n\\n\\n"'}
summon text_display -58.5 51.8 -72.7 {alignment:"left",Tags:["parkour_display"],background:16777215,transformation:{translation:[0.0, 0.0, 0.0],left_rotation:[0f, 0f, 0f, 1f],right_rotation:[0f, 0f, 0f, 1f],scale: [0.8, 0.8, 0.8]},text:'["",{"color":"red","translate":"parkour.display.record_holder"},{"text":"\\n"},{"color":"red","translate":"parkour.display.current_record"},{"text":"\\n"},{"color":"red","translate":"parkour.display.global_jumps"}]'}
summon text_display -56.5 51.8 -72.7 {alignment:"right",Tags:["parkour_display",custom],background:16777215,transformation:{translation:[0.0, 0.0, 0.0],left_rotation:[0f, 0f, 0f, 1f],right_rotation:[0f, 0f, 0f, 1f],scale: [0.8, 0.8, 0.8]},text:'["",{"color":"green","text":"???"},{"text":"\\n"},{"color":"green","text":"???"},{"text":"\\n"},{"color":"green","text":"0"}]'}

summon minecraft:armor_stand -58.7 53.3 -73.2 {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Rotation:[335f, 0f],Pose:{Body:[16f,0f,0f],Head:[34f,12f,0f],LeftLeg:[285f,328f,0f],RightLeg:[305f,10f,0f],LeftArm:[344f,0f,350f],RightArm:[346f,0f,12f]},ArmorItems:[{id:"diamond_boots"},{id:"golden_leggings"},{id:"diamond_chestplate"},{id:"player_head",components:{"minecraft:profile":{name:"MHF_Question"}}}],Tags:["parkour_display"],DisabledSlots:4144959}

# Reset leaderboard
function lobby:parkour/resethighscore