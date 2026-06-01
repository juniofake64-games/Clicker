atualiza_tempo();

#region Tempo
//aumentar velocidade do jogo
if (keyboard_check(vk_tab)){
    global.game_spd = 10;
}
if (keyboard_check(vk_space)){
    global.game_spd = 1;
}
#endregion

gerencia_produtos();

