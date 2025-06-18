tag @s add KOmessage
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,tag=self] on passengers on origin run tellraw @a {translate:"knockout.attack.blizzard",color:"dark_aqua",with:[{selector:"@a[tag=KOmessage,limit=1]"},{selector:"@s",color:"green"}]}
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,tag=self] on passengers on origin run tellraw @a {translate:"knockout.attack.blizzard",color:"dark_aqua",with:[{selector:"@a[tag=KOmessage,limit=1]"},{selector:"@s",color:"red"}]}
execute as @e[type=item_display,tag=StormCloudMain,tag=self] on passengers on origin run scoreboard players add @s MVPkill 1
tag @s remove KOmessage