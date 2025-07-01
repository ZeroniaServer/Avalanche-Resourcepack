execute if loaded -65 51 -65 unless score $load CmdData matches 40.. run scoreboard players add $load CmdData 1
execute if loaded 0 -61 0 if score $load CmdData matches 40.. run fill -8 -61 24 24 -61 0 air
execute if score $load CmdData matches 1.. run function everytick:main