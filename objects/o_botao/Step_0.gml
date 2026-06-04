mouse_sobre = position_meeting(mouse_x, mouse_y, id);

if mouse_sobre {
    spr = s_botao_sel
    scale = 1.15
    txt = .325
} else {
    spr = s_botao
    scale = 1
    txt = .3
}
