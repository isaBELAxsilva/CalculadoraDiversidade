import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Diversidades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Variáveis para armazenar os valores dos operandos
  int _value1 = 0;
  int _value2 = 0;
  int _value3 = 0;
  int _value4 = 0;
  int _value5 = 0;
  int _value6 = 0;

  // Variável para armazenar o resultado das operações
  // double _result = 0;

  // Função para somar os valores dos operandos
  void _sum() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora De Diversidades- por Isabela Marques'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Campo de entrada para o primeiro operando
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite o número total de pessoas'),
              onChanged: (value) {
                setState(() {
                  _value1 = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20.0),
            // Campo de entrada para o segundo operando
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite quantos do total são homossexuais'),
              onChanged: (value) {
                setState(() {
                  _value2 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite quantos do total são bissexuais'),
              onChanged: (value) {
                setState(() {
                  _value3 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite quantos do total são assexuais'),
              onChanged: (value) {
                setState(() {
                  _value4 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite quantos do total são panssexuais'),
              onChanged: (value) {
                setState(() {
                  _value5 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite quantos do total são heterossexuais'),
              onChanged: (value) {
                setState(() {
                  _value6 = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20.0),
            // Botões para realizar as operações
            ElevatedButton(
              onPressed: _sum,
              child: Text('Calcular Porcentagem'),
            ),
            SizedBox(height: 2.0),

            // Exibição do resultado
            Text(
              //'Resultado: $_result',
              'Porcentagem de Homossexual: ${(_value2 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              //'Resultado: $_result',
              'Porcentagem de bissexual: ${(_value3 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              //'Resultado: $_result',
              'Porcentagem de assexual: ${(_value4 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              //'Resultado: $_result',
              'Porcentagem de panssexual: ${(_value5 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              //'Resultado: $_result',
              'Porcentagem de heterossexual: ${(_value6 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
