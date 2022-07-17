import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Basic'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _decrement();
              },
              child: const Text('-'),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: () {
                _increment();
              },
              child: const Text('+'),
            ),
          ],
        ),
      ),
    );
  }
}
