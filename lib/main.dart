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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

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
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Ingrese nombre completo",
                label: Text("Alumno:"),
                icon: Icon(Icons.people),
              ),
              onChanged: (String value){
                // print(value);
              },
              onSubmitted: (String value){
                // print(value);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  names.add(name);
                  setState(() {
                    
                  });
                },
                child: Text(
                  "Agregar",
                ),
              ),
            ),
            
            SizedBox(
              height: 20.0,
            ),
            Text("Listado general de alumno"),
            
            SizedBox(
              height: 12.0,
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int pepe) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      // backgroundColor: Colors.teal,
                      child: Text(names[pepe][0]),
                    ),
                    title: Text(names[pepe]),
                    subtitle: Text("Nombre completo"),
                  );
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
