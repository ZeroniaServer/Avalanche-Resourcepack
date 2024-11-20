#> Place shulker box
setblock 0 0 0 yellow_shulker_box
summon item_display 0 0 0 {Tags:["invsaver"],item:{id:"paper",count:1,components:{"minecraft:custom_data":{Items:[]}}}}

#> Save hotbar + top two rows of inventory
item replace block 0 0 0 container.0 from entity @s hotbar.0
item replace block 0 0 0 container.1 from entity @s hotbar.1
item replace block 0 0 0 container.2 from entity @s hotbar.2
item replace block 0 0 0 container.3 from entity @s hotbar.3
item replace block 0 0 0 container.4 from entity @s hotbar.4
item replace block 0 0 0 container.5 from entity @s hotbar.5
item replace block 0 0 0 container.6 from entity @s hotbar.6
item replace block 0 0 0 container.7 from entity @s hotbar.7
item replace block 0 0 0 container.8 from entity @s hotbar.8
item replace block 0 0 0 container.9 from entity @s inventory.0
item replace block 0 0 0 container.10 from entity @s inventory.1
item replace block 0 0 0 container.11 from entity @s inventory.2
item replace block 0 0 0 container.12 from entity @s inventory.3
item replace block 0 0 0 container.13 from entity @s inventory.4
item replace block 0 0 0 container.14 from entity @s inventory.5
item replace block 0 0 0 container.15 from entity @s inventory.6
item replace block 0 0 0 container.16 from entity @s inventory.7
item replace block 0 0 0 container.17 from entity @s inventory.8
item replace block 0 0 0 container.18 from entity @s inventory.9
item replace block 0 0 0 container.19 from entity @s inventory.10
item replace block 0 0 0 container.20 from entity @s inventory.11
item replace block 0 0 0 container.21 from entity @s inventory.12
item replace block 0 0 0 container.22 from entity @s inventory.13
item replace block 0 0 0 container.23 from entity @s inventory.14
item replace block 0 0 0 container.24 from entity @s inventory.15
item replace block 0 0 0 container.25 from entity @s inventory.16
item replace block 0 0 0 container.26 from entity @s inventory.17
item replace entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents with paper[custom_data={Items:[]}]
data modify entity @e[x=0,type=item_display,tag=invsaver,limit=1] item.components."minecraft:custom_data".Items set from block 0 0 0 Items
item replace entity @s enderchest.0 from entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents

#> Save bottom row of inventory
data modify block 0 0 0 Items set value []
item replace block 0 0 0 container.0 from entity @s inventory.18
item replace block 0 0 0 container.1 from entity @s inventory.19
item replace block 0 0 0 container.2 from entity @s inventory.20
item replace block 0 0 0 container.3 from entity @s inventory.21
item replace block 0 0 0 container.4 from entity @s inventory.22
item replace block 0 0 0 container.5 from entity @s inventory.23
item replace block 0 0 0 container.6 from entity @s inventory.24
item replace block 0 0 0 container.7 from entity @s inventory.25
item replace block 0 0 0 container.8 from entity @s inventory.26
item replace entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents with paper[custom_data={Items:[]}]
data modify entity @e[x=0,type=item_display,tag=invsaver,limit=1] item.components."minecraft:custom_data".Items set from block 0 0 0 Items
item replace entity @s enderchest.1 from entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents

#> Save offhand, crafting, and cursor
data modify block 0 0 0 Items set value []
item replace block 0 0 0 container.0 from entity @s weapon.offhand
item replace block 0 0 0 container.1 from entity @s player.cursor
item replace block 0 0 0 container.2 from entity @s player.crafting.0
item replace block 0 0 0 container.3 from entity @s player.crafting.1
item replace block 0 0 0 container.4 from entity @s player.crafting.2
item replace block 0 0 0 container.5 from entity @s player.crafting.3
item replace entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents with paper[custom_data={Items:[]}]
data modify entity @e[x=0,type=item_display,tag=invsaver,limit=1] item.components."minecraft:custom_data".Items set from block 0 0 0 Items
item replace entity @s enderchest.2 from entity @e[x=0,type=item_display,tag=invsaver,limit=1] contents

#> Remove shulker box
setblock 0 0 0 air
kill @e[x=0,type=item_display,tag=invsaver,limit=1]