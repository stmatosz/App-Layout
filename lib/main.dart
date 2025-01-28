import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // color: Colors.amber,
                child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
               flex: 7,
               child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Expanded(
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.red,
                //child: const Text('Primeira Coluna'),
              ),
            ),
                 Expanded(
                   flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(28),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ]
                ),
                child: const Text('Meu Aplicativo'),
              ),
            ),
                 Expanded(
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.redAccent,
                //child: const Text('Terceira Coluna'),
              ),
            )
              ],
            ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                //color: Colors.blue,
                child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Lógica ao pressionar o botão
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
