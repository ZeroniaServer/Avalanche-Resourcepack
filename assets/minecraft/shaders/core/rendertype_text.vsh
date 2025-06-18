#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    // vanilla behavior
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
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

    // invis
    else if (Color == vec4(168/255., 160/255., 8/255., Color.a)) {
        vertexColor = vec4(0); // remove text
    }
    else if (Color == vec4(42/255., 40/255., 2/255., Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // green score
    else if (Color == vec4(168/255., 160/255., 12/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 85.0/255.0;
        vertexColor.g = 1;
        vertexColor.b = 85.0/255.0;
    }
    else if (Color == vec4(42/255., 40/255., 3/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 21.0/255.0;
        vertexColor.g = 63.0/255.0;
        vertexColor.b = 21.0/255.0;
    }

    // red score
    else if (Color == vec4(168/255., 160/255., 16/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 1;
        vertexColor.g = 85.0/255.0;
        vertexColor.b = 85.0/255.0;
    }
    else if (Color == vec4(42/255., 40/255., 4/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 63.0/255.0;
        vertexColor.g = 21.0/255.0;
        vertexColor.b = 21.0/255.0;
    }

    // sleigh UI
    if (Color == vec4(168/255., 160/255., 20/255., Color.a)) {
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); // remove color from no shadow marker
        vec3 newPos = vec3(Position.x + 50.0, Position.y, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
    }
    else if (Color == vec4(42/255., 40/255., 5/255., Color.a)) {
        vertexColor = vec4(0); // remove text + shadow
    }

    // mountain prep
    else if (Color == vec4(168/255., 160/255., 24/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y - 13.0, Position.z + 200.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 40/255., 6/255., Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // timer prep
    else if (Color == vec4(168/255., 160/255., 28/255., Color.a)) {
        vec3 newPos = vec3(Position.x, Position.y + 36.0, Position.z + 250.0);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
    else if (Color == vec4(42/255., 40/255., 7/255., Color.a)) {
        vertexColor = vec4(0); // remove shadow
    }

    // lobby hearts
    else if (Color == vec4(168/255., 160/255., 32/255., Color.a)) {
        gl_Position.xy += vec2(0, -2) * gl_Position.w;

        // remove color from marker
        vertexColor = texelFetch(Sampler2, UV2 / 16, 0); 
    }
}
