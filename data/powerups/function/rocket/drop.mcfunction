playsound entity.item.pickup master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.6

scoreboard players add @s fireworkCount 1

function powerups:rocket/droprecursive