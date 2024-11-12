execute if score $DamageRed CmdData matches 1.. unless score $green_progress CmdData matches 140.. run scoreboard players add $green_progress CmdData 1
execute if score $DamageGreen CmdData matches 1.. unless score $red_progress CmdData matches 140.. run scoreboard players add $red_progress CmdData 1

execute if score $DamageRed CmdData matches 1.. run scoreboard players remove $DamageRed CmdData 1
execute if score $DamageGreen CmdData matches 1.. run scoreboard players remove $DamageGreen CmdData 1

execute if score $DamageRed CmdData matches 1.. unless score $green_progress CmdData matches 140.. run scoreboard players add $green_progress CmdData 1
execute if score $DamageGreen CmdData matches 1.. unless score $red_progress CmdData matches 140.. run scoreboard players add $red_progress CmdData 1

execute if score $DamageRed CmdData matches 1.. run scoreboard players remove $DamageRed CmdData 1
execute if score $DamageGreen CmdData matches 1.. run scoreboard players remove $DamageGreen CmdData 1

execute if score $DamageRed CmdData matches 1.. unless score $green_progress CmdData matches 140.. run scoreboard players add $green_progress CmdData 1
execute if score $DamageGreen CmdData matches 1.. unless score $red_progress CmdData matches 140.. run scoreboard players add $red_progress CmdData 1

execute if score $DamageRed CmdData matches 1.. run scoreboard players remove $DamageRed CmdData 1
execute if score $DamageGreen CmdData matches 1.. run scoreboard players remove $DamageGreen CmdData 1

execute if score $green_progress CmdData matches 140.. run function game:avalanche/trigger_red
execute if score $red_progress CmdData matches 140.. run function game:avalanche/trigger_green