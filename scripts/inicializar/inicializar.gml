
#macro FRAMES 60
game_set_speed(FRAMES, gamespeed_fps);

//velocidade do jogo
global.game_spd = 1;
global.framerate = global.game_spd / FRAMES;
global.gamesec = 0;

function atualiza_tempo() {
    global.gamesec = delta_time / 1000000;
    global.framerate = global.gamesec * global.game_spd;
}

global.money = 10;

global.exibe_manager = false;

global.manager = [0, 0, 0];

global.produtos = [];

//dados
var file = file_text_open_read("dados.json");
var _txt = "";

while(true){
    if (file_text_eof(file)){
        break;
    }else{
        var linha = file_text_readln(file);
        _txt += linha;
    }
}

global.struct_prod = json_parse(_txt).items