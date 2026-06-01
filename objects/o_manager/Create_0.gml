comprado = global.manager[indice];
efeito_comprar = false;

desenha_manager = function(){ 
    draw_self();

    draw_set_halign(1);
    draw_set_valign(1);
    draw_set_font(fonte);
    
    var str = "R$" + string_format(custo, 0, 0);
    var txt = comprado == true ? "SOLD" : str;
    var cor = global.money >= custo ? s_manager : s_nmanager
    
    if (efeito_comprar){
        draw_sprite_ext(cor, 0, x, y, 1.25, 1.25, 0, c_white, 1)
        draw_sprite_ext(s_manager_sel, 0,x, y, 1.25, 1.25, 0, c_white, 1)
        draw_text_transformed((x + sprite_width / 2) + 2, y + 22.5, txt, .38, .4, 0);
    } else {
        draw_sprite_ext(cor, 0,x, y, 1.25, 1.25, 0, c_white, 1)
        draw_text_transformed((x + sprite_width / 2) + 2, y + 22.5, txt, .38, .4, 0);
    }
    if (comprado == true){
        draw_sprite_ext(s_manager_buy, 0, x, y, 1.25, 1.25, 0, image_blend, 1);
        draw_text_transformed((x + sprite_width / 2) + 2, y + 22.5, txt, .38, .4, 0);
    }
    
    draw_set_font(-1);
    draw_set_valign(-1);
    draw_set_halign(-1);
}