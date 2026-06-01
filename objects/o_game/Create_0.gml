produtos = [];
managers = [];

base_y = 20;

produtos_y = 0 + base_y;

cria_produtos = function(qtd = 1){
    for(var i = 0; i < qtd; i++){ 
        
        var _struct = global.struct_prod[i];
        
        produtos[i] = instance_create_layer(0, 0, layer, o_prod, _struct);
        
    }
}

cria_manager = function(){
    for (var i = 0; i < array_length(produtos); i++){
        managers[i] = instance_create_layer(96, 25 + i * 40, layer, o_manager);
        managers[i].custo = global.produtos[i].custo_base * 12.5;
    }
    
}

rolagem_prod = function(){
    //scroll
    if keyboard_check(ord("S")){
        produtos_y -= 2.5;
    }
    if (keyboard_check(ord("W"))) produtos_y += 4;
    
    var _qtd = array_length(produtos);
    var _max = (_qtd) + (40 * _qtd) + 12 - room_height;
    
    //limite
    produtos_y = clamp(produtos_y, -_max, base_y - 10);
}

rolagem = function(_val = 10){
    var _qtd = 0;
    
    if(mouse_wheel_down() || keyboard_check(ord("S"))){
        _qtd = -_val;
    }
    if(mouse_wheel_up() || keyboard_check(ord("W"))){
        _qtd = _val;
    }
    
    return _qtd;
}

gerencia_managers = function(){
    static meu_y = 0;
    
    meu_y += rolagem(15);
    
    
    var _qtd = array_length(managers);
    var _max = (_qtd) + (40 * _qtd) + 12 - room_height;
    //limite
    meu_y = clamp(meu_y, -_max, 0);
    
    for(var i = 0; i < _qtd; i++){
        var _marg = 26;
        var _x = 95;
        var _y = meu_y + _marg + ((i * 41));
        
        with(managers[i]){
            x = _x;
            y = _y;
        }
    }
    
}

gerencia_produtos = function(){

    static meu_y = 0;
    
    meu_y += rolagem(15);
    
    var _qtd = array_length(produtos);
    var _max = (_qtd) + (40 * _qtd) + 12 - room_height;
    //limite
    meu_y = clamp(meu_y, -_max, 0);
    
    //listar
    for(var i = 0; i < array_length(produtos); i++){
        var _marg = 41;
        var _x = 52;
        var _y = meu_y + _marg + (i * _marg);
        with(produtos[i]){
            x = _x;
            y = _y;
        }
    }
}

cria_produtos(array_length(global.struct_prod));
cria_manager();