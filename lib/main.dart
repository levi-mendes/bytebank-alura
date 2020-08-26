import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListaTransferencia(),
    appBar: AppBar(title: Text('Transferências'),),
    floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
    ),
  ),
));

class ListaTransferencia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(250.0, '1029')),
        ItemTransferencia(Transferencia(709.0, '839')),
        ItemTransferencia(Transferencia(20.9, '209')),
        ItemTransferencia(Transferencia(900.3, '500')),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta),
        leading: Icon(Icons.monetization_on),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final String numeroConta;

  Transferencia(this.valor, this.numeroConta);
}