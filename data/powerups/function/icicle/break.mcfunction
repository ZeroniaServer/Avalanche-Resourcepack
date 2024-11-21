item modify entity @s weapon.mainhand powerups:damage_icicle
execute if items entity @s weapon.mainhand elytra[damage=6] run playsound entity.item.break player @a[distance=..30] ~ ~ ~ 1 1
execute if items entity @s weapon.mainhand elytra[damage=6] store success score @s breakicicle run item replace entity @s weapon.mainhand with air