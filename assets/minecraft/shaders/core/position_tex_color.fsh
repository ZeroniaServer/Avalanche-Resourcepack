#version 330
#extension GL_ARB_separate_shader_objects : require

// CUSTOM CODE
#include <minecraft:emissive_utils.glsl>
// END CUSTOM CODE

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};

uniform sampler2D Sampler0;

layout(location = 0) in vec2 texCoord0;
layout(location = 1) in vec4 vertexColor;

layout(location = 0) out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    // CUSTOM CODE
    float alpha = color.a * 255.0;
    if (color.a == 0.0) {
        discard;
    } else if (check_alpha(alpha, 1.0) || check_alpha(alpha, 2.0) || check_alpha(alpha, 3.0)) {
        if (color.rgb == vec3(0.0)) {
            discard;
        } else {
            color.a = 1.0;
        }
    }
    // END CUSTOM CODE
    fragColor = color * ColorModulator;
}