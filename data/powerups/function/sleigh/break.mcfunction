# TODO drop item with 1 less durability
particle block{block_state:"spruce_planks"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.8 1.
execute on passengers on passengers run attribute @s movement_speed modifier remove sleigh:sprint
function powerups:sleigh/destroy