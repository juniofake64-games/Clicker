var _n = 1;
var _alt = 650;

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
str = convert_num(global.money);
draw_text_transformed(640, _alt * _n++, "R$" + str, 5, 5, 0);

//dinheiro
var dinheiro_seg = 0;

for(var i = 0; i < array_length(global.produtos); i++){
    
    if (global.produtos[i] != 0){
        var _atual = global.produtos[i];
        with (_atual){
            if (tenho_manager && comprado){
                dinheiro_seg += (lucro / tempo);
            }
        }
    }
}
money = string_format(dinheiro_seg, 0 , 2);

draw_text_transformed(640, _alt - 30, "R$"+string(money)+"/s", 1.5, 1.5, 0);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);



