#version 430 core

uniform vec4 colour;
uniform vec3 lightDir;

in vec2 UV;
in vec3 normal;

layout (location = 0) out vec4 fragColour;

void main()
{
    float brightness = dot( normal, -lightDir );
    brightness = clamp( brightness, 0.0, 1.0 );

    fragColour = brightness * colour;

    fragColour = vec4(1.0, 0.0, 0.0, 1.0);
}
