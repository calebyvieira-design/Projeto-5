class Jogador {
  String? nome;
  String? nickname;
  int _pontuacao = 0;
  int get pontuacao => _pontuacao;

  
  void mudarFase() {
    _pontuacao = _pontuacao + 100;
    print("$nickname passou de fase! +100 pontos garantidos.");
  }
  void sofrerDano() {
    _pontuacao = _pontuacao - 30;
    if (_pontuacao < 0) {
      _pontuacao = 0;
    }
    print("$nickname sofreu um ataque! -30 pontos.");
  }
}