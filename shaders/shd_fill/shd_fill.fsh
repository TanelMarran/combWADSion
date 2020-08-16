//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_vFillColor;

void main()
{
    vec4 originalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float remove = 0.2;
	
	gl_FragColor = vec4(u_vFillColor.r, u_vFillColor.g, u_vFillColor.b, originalColor.a);
}
