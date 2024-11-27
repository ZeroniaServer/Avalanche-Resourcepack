#> Teleport gift marker
$tp @s ~$(x) ~ ~$(z)
execute at @s run spreadplayers ~ ~ 0 1 under 45 false @s

#> Check valid position, retry if not possible
execute at @s if entity @a[gamemode=!spectator,tag=!Knockout,distance=..2] run return run function powerups:giftbox/spawn
execute at @s if entity @e[type=item_display,tag=aj.elf.root,distance=..3] run return run function powerups:giftbox/spawn
execute at @s if entity @e[type=item_display,tag=Giftbox,distance=..3] run return run function powerups:giftbox/spawn
execute at @s if entity @e[type=item_display,tag=CampfireEntity,distance=..2] run return run function powerups:giftbox/spawn
execute at @s if entity @e[type=item_display,tag=aj.snowman.root,distance=..2] run return run function powerups:giftbox/spawn
execute at @s if entity @e[type=turtle,tag=vehicle,distance=..2] run return run function powerups:giftbox/spawn
execute at @s if block ~ ~-1 ~ #powerups:elf_cant_spawn run return run function powerups:giftbox/spawn

#> Spawn an elf if the position is valid
$scoreboard players set $elftype CmdData $(type)
$scoreboard players set $elfanimation CmdData $(animation)
execute at @s run function powerups:giftbox/set_elf with storage elf:data