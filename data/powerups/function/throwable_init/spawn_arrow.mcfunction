$summon snowball ~ ~ ~ {Motion:$(Motion),Tags:["HasPassenger","init"],Owner:$(UUID),Passengers:[{id:"arrow",PierceLevel:10,damage:0.0001d,Motion:$(Motion),Owner:$(UUID),Tags:["init","ThrowableArrow"],SoundEvent:"entity.snowball.throw",pickup:0b}]}
data modify entity @e[type=snowball,tag=init,limit=1] Item set from entity @s Item
execute as @e[type=arrow,tag=init,limit=1] run function powerups:throwable_init/arrow
execute as @e[type=snowball,tag=init,limit=1] unless score @s entityidset matches 1 run function entityid:assign_tag