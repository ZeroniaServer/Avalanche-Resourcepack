tag @s add Next
tag @s add Spin


execute if score $TranslatorCreditActive CmdData matches 1 run scoreboard players add $TranslatorPage CmdData 1
execute if score $TranslatorPage CmdData matches 4.. run scoreboard players set $TranslatorPage CmdData 1


execute unless score $TranslatorCreditActive CmdData matches 1 run scoreboard players set $TranslatorPage CmdData 1
execute unless score $TranslatorCreditActive CmdData matches 1 run scoreboard players set $TranslatorCreditActive CmdData 1

execute positioned -77.5 52.2 -80.3 run function lobby:credits/translators/spawncredits