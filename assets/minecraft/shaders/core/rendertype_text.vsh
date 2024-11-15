#version 150

#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    // vanilla behavior
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vertexDistance = fog_distance(Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;

    // no shadow text: 
    if (Color == vec4(78/255., 92/255., 36/255., Color.a)) {
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); // remove color from no shadow marker
    } else if (Color == vec4(19/255., 23/255., 9/255., Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    else if (Color == vec4(88/255., 92/255., 36/255., Color.a) || Color == vec4(22/255., 23/255., 9/255., Color.a)) {
        vertexColor = vec4(0); // remove text + shadow
    }

    // green firework on top
    else if (Color == vec4(168/255., 164/255., 0, Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 3.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 41/255., 0, Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // red firework on top
    else if (Color == vec4(168/255., 172/255., 0, Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y - 4.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 43/255., 0, Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // firework below
    else if (Color == vec4(168/255., 168/255., 0, Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y - 23.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 42/255., 0, Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // mountain
    else if (Color == vec4(168/255., 160/255., 0, Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 10.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 40/255., 0, Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // timer
    else if (Color == vec4(168/255., 160/255., 4/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y - 21.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 40/255., 1/255., Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }
}
