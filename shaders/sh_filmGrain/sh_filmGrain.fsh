//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_speed;
uniform float u_time;

float u_scroll_amount = 0.0;
float u_vingette_amount = 70.0;

float noise(vec2 value){
	return fract (sin( dot( value,vec2(3.1415,8952.37)*12.29 ) )*93.116+u_time);
}

void main()
{
    float vertical_scroll = u_scroll_amount * (sin(u_time/4.0)*step(0.0002,sin(u_time)*5123.05)*0.03 + 0.0005*sin(u_time*93.116) );
	
	float texX = v_vTexcoord.x;
	float texY = abs(fract(v_vTexcoord.y + vertical_scroll));
	
	vec4 texColor = texture2D(gm_BaseTexture, vec2(texX,texY));
	float rr = .3;
    float rg = .769;
    float rb = .189;
    float ra = 0.0;
    
    float gr = .3;
    float gg = .686;
    float gb = .168;
    float ga = 0.0;
    
    float br = .272;
    float bg = .534;
    float bb = .131;
    float ba = 0.0;
    
    float red = (rr * texColor.r) + (rb * texColor.b) + (rg * texColor.g) + (ra * texColor.a);
    float green = (gr * texColor.r) + (gb * texColor.b) + (gg * texColor.g) + (ga * texColor.a);
    float blue = (br * texColor.r) + (bb * texColor.b) + (bg * texColor.g) + (ba * texColor.a);
	vec3 sepia = vec3(red,green,blue);
	
	float vingette = max(0.2 ,min(1.0, (u_vingette_amount + sin(fract(u_time*8952.31))*1.0) * ( (v_vTexcoord.x) * (1.0-v_vTexcoord.x) * (v_vTexcoord.y) * (1.0-v_vTexcoord.y) ) ));
	
	float film_grain = min(1.0, noise(v_vTexcoord)*16.0 + vingette*0.5);
	
	float black_line = step(0.0000001, fract(sin(texX*u_time*5134.032)));
	float white_line = step(0.999999, fract(sin(texX*u_time*72241.458)));
	
	vec3 color = sepia * film_grain * vingette * black_line;
	color += vec3(white_line, white_line, white_line);
	gl_FragColor = vec4(color, texColor.a);
}
