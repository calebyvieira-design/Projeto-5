class ContaBancaria {
  // Atributos (Variáveis de instância)
  // O ponto de interrogação (?) indica que o atributo aceita valores nulos inicialmente (Null Safety)
  String? titular;
  String? numeroConta;
  double _saldo = 0.0; //Atributo privado e inicializado de forma segura

  //GUETTER: Permite ler o valor de _saldo fora da classe, mas sem alteração
  double get saldo => _saldo;

  //SETTER: Permite alterar o valor de _saldo de fora da classe, mas com validação
  set saldo(double novoSaldo){
    if(novoSaldo >= 0){
      _saldo = novoSaldo;
    }else{
      print("[Alerta] Tentativa Invalida: O Saldo não pode ser negativo");
    }
  }

  // Métodos (Comportamentos da classe)
  void depositar(double valor) {
    if (valor > 0) {
      // Se o saldo atual for nulo, inicializa com 0 antes de somar
      _saldo = _saldo + valor;
      print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso na conta de $titular!");
    } else {
      print("Erro: O valor do depósito deve ser maior que zero.");
    }
  }

  void exibirExtrato() {
    print("----------------------------------------");
    print("           EXTRATO BANCÁRIO             ");
    print("----------------------------------------");
    print("Titular: $titular");
    print("Conta Corrente: $numeroConta");
    // Exibe o saldo formatado com 2 casas decimais. Caso seja nulo, exibe 0.00
    print("Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}");
    print("----------------------------------------\n");
  }
}