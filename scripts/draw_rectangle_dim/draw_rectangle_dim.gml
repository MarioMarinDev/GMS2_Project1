/// draw_rectangle_dim
/// @arguments x1,y1,x2,y2,alpha,color

// Argumnets
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var alpha = argument4;
var color = argument5;

// Local variables
var lColor = draw_get_color();
var lAlpha = draw_get_alpha();

// Draw rectangle
draw_set_color(color);
draw_set_alpha(alpha);
draw_rectangle(x1, y1, x2, y2, false);

// Return last used draw settings
draw_set_color(lColor);
draw_set_alpha(lAlpha);