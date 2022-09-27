import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';
/*
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // !Deprecated method, do not use!!!!
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
*/

// *StatefulWidget => easier way to control the state compared to StatelessWidget

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
/*
class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() {
          counter++;
        }),
      ),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < 15; i++)
                  Container(
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.all(12),
                    color: Colors.red,
                  )
              ],
            ),
          )),
    );
  }
}
*/

class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    final names = [
      'nome1',
      'nome2',
      'nome3',
      'nome4',
      'nome5',
      'nome6',
      'nome7',
      'nome8',
      'nome9',
      'nome10',
      'nome11',
      'nome12',
      'nome13',
      'nome14',
      'nome15'
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(() {
          counter++;
        }),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.all(12),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      textAlign: TextAlign.center,
                      names[index],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
