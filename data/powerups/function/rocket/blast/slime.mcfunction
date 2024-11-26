team join Collide @s
scoreboard players add @s CmdData 1

tp @s[scores={CmdData=1}] ~ ~70 ~
tp @s[scores={CmdData=3}] ~ -40 ~

execute if score @s CmdData matches 6.. run function powerups:rocket/blast/killslime