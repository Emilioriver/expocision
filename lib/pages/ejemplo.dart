import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class ejemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SimpleDialog, AlertDialog, BottomSheet",
      theme: ThemeData(
        primaryColor: Color.fromARGB(165, 103, 31, 73),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("awesome dialogs",),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: "Warning Diagolo",
                color: Colors.orange,
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.warning,
                          animType: AnimType.topSlide,
                          showCloseIcon: true,
                          title: "AVERTENCIA",
                          desc:
                              "esta es la descripción del impresionante cuadro de diálogo",
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {})
                      .show();
                },
              ),
              SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Error Diagolo",
                color: Colors.red,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "ERROR",
                    desc:
                        "esta es la descripción del impresionante cuadro de diálogo",
                    btnCancelOnPress: () {},
                    btnOkIcon: Icons.cancel,
                    btnOkColor: Colors.red,
                  ).show();
                },
              ),
              SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Pregunta  Diagolo",
                color: const Color.fromARGB(255, 255, 102, 0),
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          animType: AnimType.rightSlide,
                          showCloseIcon: true,
                          title: "AVERTENCIA",
                          desc:
                              "esta es la descripción del impresionante cuadro de diálogo",
                          btnOkOnPress: () {})
                      .show();
                },
              ),
              SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Suceso  Diagolo",
                color: Color.fromARGB(255, 31, 233, 58),
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          showCloseIcon: true,
                          title: "Suceso",
                          desc:
                              "esta es la descripción del impresionante cuadro de diálogo",
                          btnOkOnPress: () {})
                      .show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}