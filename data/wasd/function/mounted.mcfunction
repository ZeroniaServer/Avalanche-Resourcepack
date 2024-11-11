execute if predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left unless predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^ ^ ^0.0175 summon marker run function wasd:move
execute if predicate wasd:forward unless predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^0.0175 ^ ^0.0175 summon marker run function wasd:move
execute if predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^-0.0175 ^ ^0.0175 summon marker run function wasd:move
execute unless predicate wasd:forward if predicate wasd:backward unless predicate wasd:left unless predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^ ^ ^-0.0175 summon marker run function wasd:move
execute unless predicate wasd:forward if predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^0.0175 ^ ^-0.0175 summon marker run function wasd:move
execute unless predicate wasd:forward if predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^-0.0175 ^ ^-0.0175 summon marker run function wasd:move
execute unless predicate wasd:forward unless predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^0.0175 ^ ^ summon marker run function wasd:move
execute unless predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 positioned 0. 0 0. positioned ^-0.0175 ^ ^ summon marker run function wasd:move
execute unless predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left unless predicate wasd:right run data modify storage cw_wasd Motion set value [0.0,0.0,0.0]

execute store success score .w wasd if predicate wasd:forward
execute store success score .a wasd if predicate wasd:left
execute store success score .s wasd if predicate wasd:backward
execute store success score .d wasd if predicate wasd:right