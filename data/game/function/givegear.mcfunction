clear @s
loot replace entity @s armor.chest loot game:chestplate
loot replace entity @s armor.legs loot game:leggings
loot replace entity @s armor.feet loot game:boots

execute if score $gamestate CmdData matches 2 run loot replace entity @s hotbar.0 loot powerups:snowball