import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Flutterando ${controller.value}'),
      ),
    );
  }
}
