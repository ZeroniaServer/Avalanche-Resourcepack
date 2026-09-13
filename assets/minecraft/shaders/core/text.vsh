#version 330
#extension GL_ARB_separate_shader_objects : require

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
#include <minecraft:fog.glsl>
#include <minecraft:sample_lightmap.glsl>
#endif

#include <minecraft:dynamictransforms.glsl>
#include <minecraft:projection.glsl>

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;
layout(location = 2) in vec2 UV0;
#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
layout(location = 3) in ivec2 UV2;
#endif

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
uniform sampler2D Sampler2;
layout(location = 0) out float sphericalVertexDistance;
layout(location = 1) out float cylindricalVertexDistance;
#endif

layout(location = 2) out vec4 vertexColor;
layout(location = 3) out vec2 texCoord0;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color * sample_lightmap(Sampler2, UV2);
#else
    vertexColor = Color;
#endif
    texCoord0 = UV0;

    // no shadow text: 
    if (Color.rgb == vec3(78/255., 92/255., 36/255.)) {
        vertexColor = vec4(1);// remove color from no shadow marker
    } else if (Color.rgb == vec3(19/255., 23/255., 9/255.)) {
        vertexColor = vec4(0); // remove shadow
    }

    else if (Color.rgb == vec3(88/255., 92/255., 36/255.) || Color.rgb == vec3(22/255., 23/255., 9/255.)) {
        vertexColor = vec4(0); // remove text + shadow
    }

    // green firework on top
    else if (Color.rgb == vec3(168/255., 164/255., 0)) {
        vec3 newPos = vec3(Position.x, Position.y + 3.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 41/255., 0)) {
        vertexColor = vec4(0); // remove shadow
    }

    // red firework on top
    else if (Color.rgb == vec3(168/255., 172/255., 0)) {
        vec3 newPos = vec3(Position.x, Position.y - 4.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 43/255., 0)) {
        vertexColor = vec4(0); // remove shadow
    }

    // firework below
    else if (Color.rgb == vec3(168/255., 168/255., 0)) {
        vec3 newPos = vec3(Position.x, Position.y - 23.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 42/255., 0)) {
        vertexColor = vec4(0); // remove shadow
    }

    // mountain
    else if (Color.rgb == vec3(168/255., 160/255., 0)) {
        vec3 newPos = vec3(Position.x, Position.y + 10.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 40/255., 0)) {
        vertexColor = vec4(0); // remove shadow
    }

    // timer
    else if (Color.rgb == vec3(168/255., 160/255., 4/255.)) {
        vec3 newPos = vec3(Position.x - 36.0, Position.y + 36.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 40/255., 1/255.)) {
        vertexColor = vec4(0); // remove shadow
    }

    // invis
    else if (Color.rgb == vec3(168/255., 160/255., 8/255.)) {
        vertexColor = vec4(0); // remove text
    }
    else if (Color.rgb == vec3(42/255., 40/255., 2/255.)) {
        vertexColor = vec4(0); // remove shadow
    }

    // green score
    else if (Color.rgb == vec3(168/255., 160/255., 12/255.)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 85.0/255.0;
        vertexColor.g = 1;
        vertexColor.b = 85.0/255.0;
    }
    else if (Color.rgb == vec3(42/255., 40/255., 3/255.)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 21.0/255.0;
        vertexColor.g = 63.0/255.0;
        vertexColor.b = 21.0/255.0;
    }

    // red score
    else if (Color.rgb == vec3(168/255., 160/255., 16/255.)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 1;
        vertexColor.g = 85.0/255.0;
        vertexColor.b = 85.0/255.0;
    }
    else if (Color.rgb == vec3(42/255., 40/255., 4/255.)) {
        vec3 newPos = vec3(Position.x, Position.y + 19.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // recolor to green
        vertexColor.r = 63.0/255.0;
        vertexColor.g = 21.0/255.0;
        vertexColor.b = 21.0/255.0;
    }

    // sleigh UI
    if (Color.rgb == vec3(168/255., 160/255., 20/255.)) {
        vertexColor = vec4(1);
        vec3 newPos = vec3(Position.x + 50.0, Position.y, Position.z + 0.05);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
    }
    else if (Color.rgb == vec3(42/255., 40/255., 5/255.)) {
        vertexColor = vec4(0); // remove text + shadow
    }

    // mountain prep
    else if (Color.rgb == vec3(168/255., 160/255., 24/255.)) {
        vec3 newPos = vec3(Position.x - 17.0, Position.y + 6.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 40/255., 6/255.)) {
        vertexColor = vec4(0); // remove shadow
    }

    // timer prep
    else if (Color.rgb == vec3(168/255., 160/255., 28/255.)) {
        vec3 newPos = vec3(Position.x, Position.y + 36.0, Position.z);
        gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);

        // remove color from marker
        vertexColor = vec4(1);
    }
    else if (Color.rgb == vec3(42/255., 40/255., 7/255.)) {
        vertexColor = vec4(0); // remove shadow
    }

    // lobby hearts
    else if (Color.rgb == vec3(168/255., 160/255., 32/255.)) {
        gl_Position.xy += vec2(0, -2) * gl_Position.w;

        // remove color from marker
        vertexColor = vec4(1);
    }
}
