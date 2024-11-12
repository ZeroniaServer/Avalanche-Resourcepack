$rotate @s ~$(rotation_tp) ~
$data merge entity @s {interpolation_duration:$(duration),start_interpolation:0,transformation:{left_rotation:[$(rotation)f,0f,0f,1f],translation:[$(x)f,$(y)f,0f],scale:[0.0f,0.0f,0.0f]}}

tag @s remove New