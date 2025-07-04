#version 150

#moj_import <minecraft:utils.vsh>

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl and projection.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
    float LineWidth;
};
layout(std140) uniform Projection {
    mat4 ProjMat;
};

uniform sampler2D Sampler0;

in vec3 Position;
in vec2 UV0;
in vec4 Color;

out vec2 texCoord0;
out vec4 vertexColor;

/*
 * Vertex Color utility function provided by Ts
 * Retrieves the color of a vertex by adjusting the coordinates depending on the vertex id
 * "-offset" for gui elements "+offset" in other places, armor also has vertexid switched, probably more things
*/
vec4 getVertexColor(sampler2D Sampler, int vertexID, vec2 coords) {
	ivec2 texSize = textureSize(Sampler, 0); // get texture size
	vec2 offset = vec2(0.0); // init offset
	float pixelX = (1.0/texSize.x) / 2.0; // includes the width of the texture
	float pixelY = (1.0/texSize.y) / 2.0; // includes the height of the texture
	vertexID = vertexID % 4; // every plane has 4 vertices
	switch(vertexID) {
		case 1: offset = vec2(-pixelX, pixelY); break;
		case 2: offset = vec2(pixelX, pixelY); break;
		case 3: offset = vec2(pixelX, -pixelY); break;
		case 0: offset = vec2(-pixelX, -pixelY); break;
		default: offset = vec2(0.0); break;
	}
	return texture(Sampler, coords - offset); // retrieve vertex's pixel
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    texCoord0 = UV0;
	vec4 color = getVertexColor(Sampler0, gl_VertexID, texCoord0); // get the color of the vertex
	float alpha = color.a * 255.0;
	if(check_alpha(alpha, 1.0)) gl_Position = ProjMat * ModelViewMat * vec4(Position + vec3(0.0, -19.0, -0.05), 1.0); // the vertex renders a bossbar, offset it.
	if(check_alpha(alpha, 2.0)) gl_Position = ProjMat * ModelViewMat * vec4(Position + vec3(0.0, -38.0, -0.05), 1.0); // the vertex renders a bossbar, offset it.
	vertexColor = Color;
}
