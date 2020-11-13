#version 330 core

struct Material
{
    sampler2D DiffuseMap;
    vec4 DiffuseColor;
    bool Emissive, UseTextures;

    float BrightnessThreshold, OpacityMultiplier;
};

in VSH_OUT
{
    vec2 UVCoords;
} FshIn;

uniform Material Mat;
out vec4 FragColor;

void main()
{
    vec4 FinalColor;
    if(Mat.UseTextures)
    {
        FinalColor = texture(Mat.DiffuseMap, FshIn.UVCoords) * Mat.BrightnessThreshold;
        FinalColor.a *= Mat.OpacityMultiplier;
    }
    else
        FinalColor = Mat.DiffuseColor;

    FragColor = FinalColor;
}