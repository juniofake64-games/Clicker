atualiza_tempo();

#region Tempo
//aumentar velocidade do jogo
if (keyboard_check(vk_tab)){
    global.game_spd = 20;
}
if (keyboard_check(vk_space)){
    global.game_spd = 1;
}

valor = 1000000

if keyboard_check_pressed(ord("Q")){
    global.money += valor;
}

#endregion

gerencia_produtos();
gerencia_managers();

