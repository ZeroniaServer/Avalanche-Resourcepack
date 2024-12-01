data merge entity @s[tag=!Voided] {PickupDelay:100000,Age:-32768,NoGravity:1b,Motion:[0.0d,-0.05d,0.0d]}
data merge entity @s[tag=Voided] {PickupDelay:100000,Age:-32768,NoGravity:1b,Motion:[0.0d,-0.02d,0.0d]}

execute if entity @a[tag=self,team=Green] run tag @s add RocketItemRed
execute if entity @a[tag=self,team=Red] run tag @s add RocketItemGreen

tag @s add RocketItem
tag @s add FWItem

execute if predicate game:high_arena run tag @s add higharena
execute if predicate game:high_arena run data merge entity @s[tag=!Voided] {NoGravity:0b}

item modify entity @s contents [{"function":"minecraft:set_custom_data","tag":"{Rocket:1b}"}]