draw_sprite_ext(spr, 0, x, y, scale, scale, 0, image_blend, 1);

draw_set_font(fonte);
draw_set_halign(1);
draw_set_valign(1);
draw_text_transformed(x, y + 3, "manager", txt, txt + .1, 0);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);

draw_set_colour(c_black);
draw_set_colour(-1);
