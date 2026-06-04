window_set_cursor(cr_none);
cursor_sprite = s_cursor;

if mouse_check_button_pressed(mb_left){
    instance_create_layer(mouse_x, mouse_y, "clicks", o_click)
}

