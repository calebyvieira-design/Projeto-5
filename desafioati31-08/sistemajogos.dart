import './jogo.dart';

void main() {
  print("=== PLATAFORMA GAMER ===\n");

  var jogador1 = Jogador();
  jogador1.nome = "Pedrinho silva";
  jogador1.nickname = "pedrinhojogador67";
  print("Pontuação Inicial: ${jogador1.pontuacao} pts\n");

  jogador1.mudarFase();
  jogador1.mudarFase();
  print("Pontuação Atual: ${jogador1.pontuacao} pts\n");

  jogador1.sofrerDano();
  print("Pontuação Final: ${jogador1.pontuacao} pts");
}
