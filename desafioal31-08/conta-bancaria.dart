class ContaBancaria{
  String? numeroConta;
  String? titular;
  double _saldo = 0.0;

    double get saldo => _saldo;
    set saldo(double novoSaldo){
    if(novoSaldo >= 0){
     _saldo = novoSaldo;
   }else{
      print("[Alerta] Tentativa Invalida: O Saldo não pode ser negativo");
    }
   }

    void depositar(double valor){
    if(valor > 0){
    _saldo = _saldo + valor;
    print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso na conta de $titular!");
    } else {
      print("Erro: O valor do depósito deve ser maior que zero.");
    }
  }
  
  void exibirExtrato(){
    print('----------------------------------------');
    print('           EXTRATO BANCARIO             ');
    print('----------------------------------------');
    print('Titular: $titular');
    print('Conta Corrente: $numeroConta');
    print('Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}');
    print('----------------------------------------\n');



  }
}