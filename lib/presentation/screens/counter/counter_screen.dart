import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = 'counter';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter screen '),
      ),
      body: Center(
        child: Text('Contador', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
