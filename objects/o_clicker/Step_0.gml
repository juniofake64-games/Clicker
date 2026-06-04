mouse_sobre = position_meeting(mouse_x, mouse_y, id)
mouse_click = mouse_check_button_pressed(mb_left)

if mouse_sobre {
    if mouse_click{
        global.money += 1;
    }
}

alpha = lerp(alpha, 0, .1);
