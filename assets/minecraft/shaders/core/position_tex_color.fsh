#version 150

#moj_import <minecraft:utils.vsh>

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
    float LineWidth;
};

uniform sampler2D Sampler0;

in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    float alpha = color.a * 255.0;
    if (color.a == 0.0) {
      discard;
    } else if(check_alpha(alpha, 1.0) || check_alpha(alpha, 2.0) || check_alpha(alpha, 3.0)) {
      if(color.rgb == vec3(0.0)) {
        discard;
      } else {
        color.a = 1.0;
      }
    }
    fragColor = color * ColorModulator;
}