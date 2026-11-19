import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mock_data.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget construirPescado(String nombre, String imagen, String nombreBarco, int id) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50,
          height: 100,
          margin: EdgeInsets.all(4),
          child: Center(
            child: Image.asset(imagen),
          ),

        ),
        title: Text(nombre),
        subtitle: Row(
          children: [
            Container(
              child: Icon(
                Icons.sailing_outlined,
              ),
              padding: EdgeInsets.all(4),
            ),
            Text(nombreBarco),
          ],
        ),
        trailing: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(nombre: nombre, id: id)));
        }, icon: Icon(Icons.arrow_forward)),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LA LONJA", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.grey,
        actions: [
          Icon(Icons.home_outlined, size: 30, color: Colors.white),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          construirPescado(
            mockTiposPescado[0].nombre,
            mockTiposPescado[0].imagenUrl,
            mockBarcos[0].nombre,
            0
          ),
          construirPescado(
            mockTiposPescado[1].nombre,
            mockTiposPescado[1].imagenUrl,
            mockBarcos[1].nombre,
            1
          ),
          construirPescado(
              mockTiposPescado[2].nombre,
              mockTiposPescado[2].imagenUrl,
              mockBarcos[2].nombre,
              2
    ),
          construirPescado(
              mockTiposPescado[3].nombre,
              mockTiposPescado[3].imagenUrl,
              mockBarcos[3].nombre,
              3

    ),
        ],
      ),
    );
  }
}