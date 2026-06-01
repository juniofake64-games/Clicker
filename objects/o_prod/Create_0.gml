segundo = 0;

subimg = 0;
level = 0;

timer = 0;

fazer = false;

if (array_length(global.manager) <= indice){
    tenho_manager = global.manager[indice];
} else {
    array_push(global.manager, 0);
    tenho_manager = 0;
}

//alala
#region economia

custo = custo_base;
comprado = false;
efeito_comprar = false;
lucro = lucro_base;

#endregion

global.produtos[indice] = id;

incremento = 1.05;

comprar = function () {
    global.money -= custo; 
    comprado = true;
                
    var _custo_atual = floor(custo_base * (power (incremento, level)));
    
    custo += _custo_atual;
    level++;
    lucro = lucro_base * level;
}

acao = function () {
    timer += global.framerate;
        
    if (timer > tempo) {
        timer = 0;
        fazer = tenho_manager;
        global.money += lucro;
    }
}

desenha_produto = function(){
    
    //sprite produto
    
    if level <= 0{
        subimg = 0;
    } else {
        subimg = indice;
    }
    
    draw_sprite(s_produto, subimg, x, y)
    
    //item
    draw_sprite_ext(s_item, indice - 1, x - 8, y-7, 1.25, 1.25, 0, c_white, 1);
    
    #region textos informativos (level) +

    draw_set_valign(1);
    draw_set_halign(1);
    draw_set_font(fonte);
    draw_text_transformed(x - 8, y + 3, level, .4, .4, 0);
    
    var _x1 = x;
    var _y1 = y - 18;
    var _y2 = _y1 - 5;
    
    #endregion
    
    #region barra de carregamento
    
    var _progresso = (timer / tempo) * 63;
    
    draw_rectangle_colour(_x1, _y1+2, _x1 + 64, _y2-1, c_black, c_black, c_black, c_black, false);
    draw_rectangle_colour(_x1+1, _y1, _x1 + 63, _y2, #4C4C4C, #4C4C4C, #4C4C4C, #4C4C4C, false);
    draw_rectangle_colour(_x1+1, _y1, _x1 + _progresso, _y2, #6EFF00, #6EFF00, #6EFF00, #6EFF00, false);
    
    #endregion
    
    #region upgrade
    
    _y1 = y;
    var str = convert_num(custo);
    
    var xx = x + 21;
    var yy = y - 15;
    var x2 = xx + 19;
    var y2 = yy + 29;
    
    //draw_rectangle(xx, yy, x2, y2, false);
    
    var cor = global.money >= custo ? s_upgrade : s_nupgrade
    
    if (efeito_comprar){
        draw_sprite_ext(cor, 0,xx - 1, yy-1, 1.35, 1.35, 0, c_white, 1)
        draw_sprite_ext(s_upgrade_sel, 0,xx - 1, yy-1, 1.35, 1.35, 0, c_white, 1)
        draw_text_transformed(xx + 10, _y1 + 7.5, "R$" + str, .43, .43, 0);
    } else {
    draw_sprite_ext(cor, 0,xx, yy, 1.25, 1.25, 0, c_white, 1)
    draw_text_transformed(xx + 10, _y1 + 7.5, "R$" + str, .4, .4, 0);
    }
    draw_set_font(-1);
    
    #endregion
    
    #region Lucro
    
    var _str = convert_num(lucro); 
    draw_set_halign(1);
    draw_set_valign(1);
    draw_set_font(fonte);
    draw_text_transformed(x - 8, y - 21, "+" + _str, .4, .4, 0);
    draw_set_font(-1);
    draw_set_valign(-1);
    draw_set_halign(-1);
    
    #endregion
    
    #region tempo pra fazer
    
    var _s = floor((tempo - timer) % 60);
    var _m = (tempo - timer) div 60;
    var _h = ((tempo - timer) div 60) div 60;
    var _seg = _s > 9 ? _s: "0" + string(_s);
    var _min = _m > 9 ? _m: "0" + string(_m);
    var _hor = _h > 9 ? _h: "0" + string(_h);
    draw_set_font(fonte);
    draw_set_halign(1);
    draw_text_transformed(_x1 + 32, _y1 - 25, string("{0}:{1}:{2}", _hor, _min, _seg), .38, .38, 0);
    draw_set_font(-1);
    draw_set_halign(-1)
    
    #endregion
    
}

