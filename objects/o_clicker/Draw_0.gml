draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);

if alpha > 0{
    gpu_set_fog(1, color, 0, 0);

    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, alpha);

    gpu_set_fog(0, color, 0, 0);
}