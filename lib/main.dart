import 'package:flutter/material.dart';
import 'package:examen_u1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //*Este biene por defauld
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //*Este es el ejemplo 1
      //home: const Ejemplo(),
      //*Este es el ejemplo 2
      //home: const Ejemplo2(),
      //*Este es el ejemplo 3
      //home: const Ejemplo3(),
      //TODO: se agrego la pagina de home_screen.dart
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Ejemplo extends StatelessWidget {
  const Ejemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hola a mi primer Widget"),
    );
  }
}

class Ejemplo2 extends StatelessWidget {
  const Ejemplo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primer App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Hibridas"),
        ),
        body: Center(
            child: Column(
          children: const [
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
          ],
        )),
      ),
    );
  }
}

class Ejemplo3 extends StatelessWidget {
  const Ejemplo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rebuild only when necessary'),
      ),
      body: const Center(
        child: Text("Hola"),
      ),
    );
  }
}
