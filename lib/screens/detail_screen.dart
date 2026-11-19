import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mock_data.dart';

class DetailScreen extends StatefulWidget{
  final String nombre;
  final int id;
  const DetailScreen({super.key,
    required this.nombre,
    required this.id
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle Captura"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
        },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mockCapturas[widget.id].calidad,),
                      Text(widget.nombre),
                    ],
                  ),
                Container(
                  width: 60,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(mockCapturas[widget.id].precioPorKg.toString() + "€/kG"),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: Row(
              children: [
                Icon(Icons.sailing_outlined),
                Text("Datos del barcos", style: TextStyle(fontSize: 25, decoration: TextDecoration.underline)),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(mockBarcos[widget.id].nombre),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Descripcion", style: TextStyle(fontSize: 25, decoration: TextDecoration.underline),),
                Text(mockTiposPescado[widget.id].descripcion, style: TextStyle(fontSize: 20,))
              ],
            ),
          ),
        ]
      ),
    );
  }
  
}