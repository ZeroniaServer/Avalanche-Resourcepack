execute unless items entity @s enderchest.* * run return fail

#> Place shulker box
setblock 0 0 0 yellow_shulker_box
summon item_display 0 0 0 {Tags:["invloader"],item:{id:"paper",count:1,components:{"minecraft:custom_data":{Items:[]}}}}

#> Load hotbar + top two rows of inventory
item replace entity @e[x=0,type=item_display,tag=invloader,limit=1] contents from entity @s enderchest.0
data modify block 0 0 0 Items set from entity @e[x=0,type=item_display,tag=invloader,limit=1] item.components."minecraft:custom_data".Items
loot replace entity @s hotbar.0 27 mine 0 0 0 stick[custom_data={drop_contents:1b}]

#> Load bottom row of inventory
item replace entity @e[x=0,type=item_display,tag=invloader,limit=1] contents from entity @s enderchest.1
data modify block 0 0 0 Items set from entity @e[x=0,type=item_display,tag=invloader,limit=1] item.components."minecraft:custom_data".Items
loot replace entity @s inventory.18 9 mine 0 0 0 stick[custom_data={drop_contents:1b}]

#> Load offhand, crafting, and cursor
item replace entity @e[x=0,type=item_display,tag=invloader,limit=1] contents from entity @s enderchest.2
data modify block 0 0 0 Items set from entity @e[x=0,type=item_display,tag=invloader,limit=1] item.components."minecraft:custom_data".Items
item replace entity @s weapon.offhand from block 0 0 0 container.0
item replace entity @s player.cursor from block 0 0 0 container.1
item replace entity @s player.crafting.0 from block 0 0 0 container.2
item replace entity @s player.crafting.1 from block 0 0 0 container.3
item replace entity @s player.crafting.2 from block 0 0 0 container.4
item replace entity @s player.crafting.3 from block 0 0 0 container.5

#> Remove shulker box
setblock 0 0 0 air
kill @e[x=0,type=item_display,tag=invloader,limit=1]