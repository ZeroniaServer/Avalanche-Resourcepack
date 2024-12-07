#version 150

// Checking for the exact alpha value breaks things, so I use this function to cut down on space while also making it work better.

bool check_alpha(float textureAlpha, float targetAlpha) {
    
    float targetLess = targetAlpha - 0.01;
    float targetMore = targetAlpha + 0.01;
    return (textureAlpha > targetLess && textureAlpha < targetMore);
    
}

// for particle, entity, entity block and item(player head, banner, ...)
vec4 apply_global_emissive(vec4 inputColor, vec4 lightColor, float inputAlpha) {
    vec4 remappingColor = inputColor * lightColor;
    if(check_alpha(inputAlpha, 250.0)) { // always emissive
        remappingColor = inputColor;
        remappingColor.a = 1.0;
    } else if (check_alpha(inputAlpha, 242.0)) { // special color for campfire
        remappingColor = inputColor;
        remappingColor.a = 0.30196078431;
    }
    return remappingColor;
}