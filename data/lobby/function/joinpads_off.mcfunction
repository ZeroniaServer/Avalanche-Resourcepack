execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#784859","with":[{"translate":"chat.settings_box","color":"#dd82a2","bold":true}]}
execute as @a[predicate=lobby:joinpad_green,tag=!RequestSettings] at @s run playsound entity.item.break master @s ~ ~ ~ 1 0

execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run tellraw @s {"translate":"chat.confirm","color":"#784859","with":[{"translate":"chat.settings_box","color":"#dd82a2","bold":true}]}
execute as @a[predicate=lobby:joinpad_red,tag=!RequestSettings] at @s run playsound entity.item.break master @s ~ ~ ~ 1 0

tag @a[predicate=lobby:joinpad_green,tag=!RequestSettings] add RequestSettings
tag @a[predicate=lobby:joinpad_red,tag=!RequestSettings] add RequestSettings

tag @a[predicate=!lobby:joinpad_green,predicate=!lobby:joinpad_red,tag=RequestSettings] remove RequestSettings