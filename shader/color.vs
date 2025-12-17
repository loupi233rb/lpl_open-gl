#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec3 ourColor; // 向片段着色器输出一个颜色
out vec2 TexCoord;

uniform mat4 model;        // 模型矩阵
uniform mat4 view;         // 视图矩阵
uniform mat4 projection;   // 投影矩阵

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    TexCoord = aTexCoord;
}