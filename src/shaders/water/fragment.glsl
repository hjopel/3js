uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main(){
    gl_FragColor = vec4(mix(uDepthColor, uSurfaceColor, vElevation * uColorMultiplier + uColorOffset),1.0);
}