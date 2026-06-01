var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var mouse_click = mouse_check_button_pressed(mb_left);

efeito_comprar = _mouse_sobre;

if _mouse_sobre && comprado == false{
    if mouse_click{
        
        if(global.money >= custo) && global.produtos[indice].comprado == true{
            global.money -= custo;
            global.manager[indice] = true;
            comprado = true;
            
            global.produtos[indice].fazer = true;
            global.produtos[indice].tenho_manager = true;
        }
    }
}
