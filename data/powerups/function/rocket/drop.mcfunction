playsound entity.item.pickup master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.6

scoreboard players add @s fireworkCount 1
loot spawn ~ ~0.1 ~ loot powerups:rocket_drop
scoreboard players set @s fireworkCount 0
execute if entity @s[team=Red] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run data merge entity @s {Tags:["RocketItemRed","RocketItem"],PickupDelay:100000,Age:-32768}
execute if entity @s[team=Green] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run data merge entity @s {Tags:["RocketItemGreen","RocketItem"],PickupDelay:100000,Age:-32768}
execute as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run item modify entity @s contents [{"function":"minecraft:set_custom_data","tag":"{Rocket:1b}"}]
clear @s snowball[custom_data~{Rocket:1b}]