$loot spawn ~ ~0.01 ~ loot {\
    "pools": [\
        {\
            "rolls": 1,\
            "entries": [\
                {\
                    "type": "minecraft:item",\
                    "name": "minecraft:ghast_spawn_egg",\
                    "functions": [\
                        {\
                            "function": "minecraft:set_components",\
                            "components": {\
                                "minecraft:entity_data": {\
                                    "id": "minecraft:marker",\
                                    "Tags": [\
                                        "SpawnSleigh",\
                                        "dura$(val)"\
                                    ]\
                                },\
                                "minecraft:can_place_on": {\
                                    "blocks": "#powerups:placeable"\
                                },\
                                "minecraft:item_model": "minecraft:weapons/sleigh",\
                                "minecraft:custom_data": {Sleigh:1b},\
                                "minecraft:custom_name": [\
                                    {\
                                        "translate": "powerup.sleigh.name",\
                                        "italic": false,\
                                        "color": "dark_aqua"\
                                    }\
                                ],\
                                "minecraft:lore": [\
                                    [\
                                        {\
                                            "translate": ":beginner:",\
                                            "color": "white",\
                                            "italic": false\
                                        },\
                                        {\
                                            "text": " "\
                                        },\
                                        {\
                                            "translate": "powerup.sleigh.effect.support.1",\
                                            "italic": false,\
                                            "color": "blue"\
                                        }\
                                    ],\
                                    [\
                                        {\
                                            "translate": ":crossed_swords:",\
                                            "color": "white",\
                                            "italic": false\
                                        },\
                                        {\
                                            "text": " "\
                                        },\
                                        {\
                                            "translate": "powerup.sleigh.effect.damage.1",\
                                            "italic": false,\
                                            "color": "red"\
                                        }\
                                    ],\
                                    [\
                                        {\
                                            "translate": ":star:",\
                                            "color": "white",\
                                            "italic": false\
                                        },\
                                        {\
                                            "text": " "\
                                        },\
                                        {\
                                            "translate": "powerup.sleigh.effect.special.1",\
                                            "italic": false,\
                                            "color": "yellow"\
                                        }\
                                    ]\
                                ],\
                                "minecraft:can_break": {\
                                    "blocks": "minecraft:target"\
                                },\
                                "minecraft:tooltip_display": {\
                                    "hidden_components": [\
                                        "can_break",\
                                        "can_place_on"\
                                    ]\
                                },\
                                "minecraft:max_damage": 4,\
                                "minecraft:damage": $(val),\
                                "!minecraft:max_stack_size": {}\
                            }\
                        }\
                    ]\
                }\
            ]\
        }\
    ]\
}
execute as @e[type=item] if items entity @s contents ghast_spawn_egg[!custom_data~{NoDrop:1b}] run function powerups:sleigh/resetitem
