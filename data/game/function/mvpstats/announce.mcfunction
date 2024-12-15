tellraw @a ["\n",{"translate":"mvp.statistics","bold":true,"color":"blue"}]

#> Rockets
execute store result score $MVPCount CmdData if entity @a[tag=RocketMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=RocketMVP,scores={MVProcket=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.rocket.1","color":"aqua","with":[{"selector":"@a[tag=rocketMVP,limit=1]"},{"translate":"mvp.rocket.damage","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVPdamage"},"bold":true,"color":"dark_aqua"},{"translate":"mvp.rocket.single","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVProcket"},"bold":true,"color":"dark_aqua"}]}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=RocketMVP,scores={MVProcket=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.rocket.1","color":"aqua","with":[{"selector":"@a[tag=RocketMVP,limit=1]"},{"translate":"mvp.rocket.damage","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVPdamage"},"bold":true,"color":"dark_aqua"},{"translate":"mvp.rocket.plural","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVProcket"},"bold":true,"color":"dark_aqua"}]}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=RocketMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=RocketMVP,scores={MVProcket=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.rocket.2","color":"aqua","with":[{"selector":"@a[tag=RocketMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.rocket.damage","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVPdamage"},"bold":true,"color":"dark_aqua"},{"translate":"mvp.rocket.single","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVProcket"},"bold":true,"color":"dark_aqua"}]}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=RocketMVP,scores={MVProcket=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.rocket.2","color":"aqua","with":[{"selector":"@a[tag=RocketMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.rocket.damage","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVPdamage"},"bold":true,"color":"dark_aqua"},{"translate":"mvp.rocket.plural","color":"aqua","with":[{"score":{"name":"@a[tag=RocketMVP,limit=1]","objective":"MVProcket"},"bold":true,"color":"dark_aqua"}]}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

#> Kills
execute store result score $MVPCount CmdData if entity @a[tag=KillMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.kill.1","color":"aqua","with":[{"selector":"@a[tag=KillMVP,limit=1]"},{"translate":"mvp.kill.single","color":"aqua","with":[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.kill.1","color":"aqua","with":[{"selector":"@a[tag=KillMVP,limit=1]"},{"translate":"mvp.kill.plural","color":"aqua","with":[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=KillMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.kill.2","color":"aqua","with":[{"selector":"@a[tag=KillMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.kill.single_each","color":"aqua","with":[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.kill.2","color":"aqua","with":[{"selector":"@a[tag=KillMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.kill.plural_each","color":"aqua","with":[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

#> Deaths
execute store result score $MVPCount CmdData if entity @a[tag=DeathMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.death.1","color":"aqua","with":[{"selector":"@a[tag=DeathMVP,limit=1]"},{"translate":"mvp.death.single","color":"aqua","with":[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},"bold":true,"color":"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.death.1","color":"aqua","with":[{"selector":"@a[tag=DeathMVP,limit=1]"},{"translate":"mvp.death.plural","color":"aqua","with":[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},"bold":true,"color":"dark_aqua"}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=DeathMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.death.2","color":"aqua","with":[{"selector":"@a[tag=DeathMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.death.single_each","color":"aqua","with":[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},"bold":true,"color":"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a [{"text":"❄ ","color":"white"},{"translate":"mvp.death.2","color":"aqua","with":[{"selector":"@a[tag=DeathMVP,tag=!lastMVP]"},{"selector":"@a[tag=lastMVP,limit=1]"},{"translate":"mvp.death.plural_each","color":"aqua","with":[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},"bold":true,"color":"dark_aqua"}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

tellraw @a ""

scoreboard players reset $MVPCount CmdData