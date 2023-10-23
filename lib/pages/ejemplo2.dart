
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';



class ejemplo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Examen",
      theme: ThemeData(
        primaryColor: Color.fromARGB(103, 71, 220, 17),
      ),
      home: ExamenPage(),
    );
  }
}

class ExamenPage extends StatefulWidget {
  @override
  _ExamenPageState createState() => _ExamenPageState();
}

class _ExamenPageState extends State<ExamenPage> {
  int _puntuacion = 0;
  int _preguntasContestadas = 0;

  // Esta función evalúa la puntuación y muestra el mensaje correspondiente
  void _evaluarPuntuacion() {
    _preguntasContestadas++;
    if (_preguntasContestadas < 2) return; // Si no ha contestado ambas preguntas, no muestra nada aún

    String titulo;
    String mensaje;

    if (_puntuacion < 7) {
      titulo = "Reprobado";
      mensaje = "Necesitas estudiar más!";
    } else if (_puntuacion == 7 || _puntuacion == 8) {
      titulo = "Bien hecho";
      mensaje = "Tuviste $_puntuacion. ¡Muy bueno!";
    } else {
      titulo = "Excelente";
      mensaje = "¡Buen trabajo!";
    }

    AwesomeDialog(
      context: context,
       dialogType: DialogType.question,
      animType: AnimType.topSlide,
      title: titulo,
      desc: mensaje,
      btnOkOnPress: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Examen"),
      ),
      body: Center(
          child: SingleChildScrollView(    //para quitar el limete de la pantalla   
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pregunta 1
               Text("PREGUNTA #1"),
              Text("¿Que es un API ?"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _puntuacion += 5; // Suponiendo que la respuesta correcta vale 5 puntos
                  _evaluarPuntuacion();
                });
              },
                child: Text("Es un puente que solo sirve para aser pagos"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _evaluarPuntuacion();
                });
              },
              child: Text("Es un puente que nos ayuda conectar varias app"),
            ),
            SizedBox(height: 20), // Espacio entre preguntas
            // Pregunta 2
               Text("PREGUNTA #2"),
             Text("¿Para que nos sirve el comando git branch -d?"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _evaluarPuntuacion();
                });
              },
              child: Text("Para clonar "),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _puntuacion += 5; // Suponiendo que la respuesta correcta vale 5 puntos
                  _evaluarPuntuacion();
                });
              },
              child: Text("Para eliminar con permisos"),
            ),
            SizedBox(height: 420),
          ],
        ),
        
      ),
      )
    );
    
  }
}
