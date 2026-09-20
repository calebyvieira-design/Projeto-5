
// 1. Importando o arquivo onde a classe foi estruturada
import './conta_bancaria.dart';

void main() {
  print("=== INICIALIZANDO O SISTEMA FINTECH ===\n");

  // 2. Instanciação da Primeira Conta (Sintaxe Moderna: sem o uso da palavra 'new')
  var conta1 = ContaBancaria();
  conta1.titular = "Ana Silva";
  conta1.numeroConta = "1024-5";
  conta1.saldo = 1000000.00; // Saldo inicial
  print(conta1.saldo);

  // 3. Instanciação da Segunda Conta (Sintaxe Moderna)
  var conta2 = ContaBancaria();
  conta2.titular = "Carlos Souza";
  conta2.numeroConta = "2048-X";
  //conta2.saldo = 50.00; // Saldo inicial

  // 4. Executando operações e exibindo os comportamentos
  
  // Operações na conta da Ana
  conta1.exibirExtrato();
  conta1.depositar(250.50);
  conta1.exibirExtrato();

  // Operações na conta do Carlos
  conta2.exibirExtrato();
  conta2.depositar(100.00);
  // Testando uma validação do método de depósito
  conta2.depositar(-20.00); 
  conta2.exibirExtrato();
}