playsound entity.item.pickup master @a[tag=!self] ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.6

scoreboard players add @s fireworkCount 1
loot spawn ~ ~1 ~ loot powerups:rocket_drop
scoreboard players set @s fireworkCount 0
execute if entity @s[team=Green] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run data merge entity @s {Tags:["RocketItemRed","RocketItem","FWItem"],PickupDelay:100000,Age:-32768,NoGravity:1b,Motion:[0.0d,-0.05d,0.0d]}
execute if entity @s[team=Red] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run data merge entity @s {Tags:["RocketItemGreen","RocketItem","FWItem"],PickupDelay:100000,Age:-32768,NoGravity:1b,Motion:[0.0d,-0.05d,0.0d]}
execute as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run item modify entity @s contents [{"function":"minecraft:set_custom_data","tag":"{Rocket:1b}"}]
clear @s snowball[custom_data~{Rocket:1b}]