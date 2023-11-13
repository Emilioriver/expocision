import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';



class ejemplo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Confirmación de Borrado",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List<String> items = ["1-coca-cola", "2-Azucar", "3-Cafe","4-Arroz", "5-Frijoles", "6-Harrina","7-Manzana", "8-Uvas", "9-Fresas"];

  void confirmarBorrado(int index) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.leftSlide,
      title: 'Confirmación',
      desc: '¿Estás seguro que quieres borrar este elemento?',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        setState(() {
          items.removeAt(index);
        });
      },
    )..show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirmación de Borrado')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                confirmarBorrado(index);
              },
            ),
          );
        },
      ),
    );
  }
}
