setblock 0 0 0 oak_sign
data modify block 0 0 0 front_text.messages[0] set value '[{"translate":"powerup.snowman.possessive","color":"dark_aqua","with":[{"selector":"@a[tag=placer,limit=1]"}]}]'
data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
setblock 0 0 0 air
$team join $(team)
function entityid:assign_tag