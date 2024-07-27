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
  List<String> names = [
    "Daniel",
    "Elvis",
    "Cesar",
    "Juan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Contactos",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Ingrese nombre completo",
                label: Text("Alumno:"),
                icon: Icon(Icons.people),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Agregar",
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int pepe) {
                  return Text(names[pepe]);
                },
              ),
            ),
          ],
        ),
      ),

      // body: ListView(
      //   children: List.generate(100, (index)=> Text("Hola")),
      // ),
      // body: ListView.builder(
      //   itemCount: names.length,
      //   itemBuilder: (BuildContext context, int pepe){
      //     return Text(names[pepe]);
      //   },
      // ),
    );
  }
}
