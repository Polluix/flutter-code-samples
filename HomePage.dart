import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Flutterando', textDirection: TextDirection.rtl),
      ),
    );
  }
}
/* // Scaffold
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => print('Flutterando'),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Flutterando', textDirection: TextDirection.rtl),
      ),
    );
  }
}
*/
