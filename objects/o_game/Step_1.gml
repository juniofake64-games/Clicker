atualiza_tempo();

#region Tempo
//aumentar velocidade do jogo
if (keyboard_check(vk_tab)){
    global.game_spd = 20;
}
if (keyboard_check(vk_space)){
    global.game_spd = 1;
}

if keyboard_check(ord("Q")){
    global.money += 1000;
}

#endregion

gerencia_produtos();
gerencia_managers();

