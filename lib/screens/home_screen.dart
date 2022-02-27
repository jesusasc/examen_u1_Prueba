import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi interface 2")),
      body: PageView(children: const [Page1(), Page2(), Page3()]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.ad_units_rounded), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "USER")
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: const [
            Text(
              "Mi Pagina 1",
              style: TextStyle(color: Color.fromARGB(255, 3, 248, 3)),
            ),
            Text(
              "Segundo Encabezado",
              style: TextStyle(color: Color.fromARGB(255, 231, 11, 11)),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: const Center(
        child: Text(
          "Mi pagina 2",
          style: TextStyle(color: Colors.cyan),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: const Center(
        child: Text(
          "Mi pagina 3",
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
      ),
    );
  }
}
