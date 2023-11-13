import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Emilio Alexander Rodríguez Rivera',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Color.fromARGB(186, 8, 180, 8),
                ),
              ),
              Image.asset('images/mia.jpg', width: 200),
              Text(
                'TEMA:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 239, 65, 1),
                ),
              ),
              Text('SimpleDialog, AlertDialog, BottomSheet', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 239, 1, 96),
                ),),
            ],
          );
        },
      ),
    );
  }
}
