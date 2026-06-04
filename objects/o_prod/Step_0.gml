atualiza_tempo();

segundo += global.framerate;

#region Comandos

//comandos
if comprado {
    if fazer {
        acao();
    }
}



var mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var mouse_click = mouse_check_button_pressed(mb_left);

if mouse_click {
    audio_play_sound(click, 1, 0, .75, 0, random_range(.85, 1.15));
}

if mouse_sobre{
    if mouse_click{
        fazer = true;
    }
    
    var xx = x + 21;
    var yy = y - 15;
    var x2 = xx + 19;
    var y2 = yy + 32;
    var _mouse_caixa = point_in_rectangle(mouse_x, mouse_y, xx, yy, x2, y2);
    
    efeito_comprar = _mouse_caixa
   
    if(_mouse_caixa){
        if (mouse_click){
            if (global.money >= custo){
                comprar();
           }
       } 
    }
}
var xx = x + 21;
var yy = y - 15;
var x2 = xx + 19;
var y2 = yy + 32;
var _mouse_caixa = point_in_rectangle(mouse_x, mouse_y, xx, yy, x2, y2)
efeito_comprar = _mouse_caixa

#endregion

