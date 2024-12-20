tag @s add Previous
tag @s add Spin

execute if score $TranslatorCreditActive CmdData matches 1 run scoreboard players remove $TranslatorPage CmdData 1
execute unless score $TranslatorPage CmdData matches 1.. run scoreboard players set $TranslatorPage CmdData 4


execute unless score $TranslatorCreditActive CmdData matches 1 run scoreboard players set $TranslatorPage CmdData 1
execute unless score $TranslatorCreditActive CmdData matches 1 run scoreboard players set $TranslatorCreditActive CmdData 1

execute positioned -77.5 52.2 -80.3 run function lobby:credits/translators/spawncredits