import 'package:expocision/pages/ejemplo.dart';
import 'package:expocision/pages/ejemplo2.dart';
import 'package:expocision/pages/ejemplo3.dart';
import 'package:flutter/material.dart';

import 'inicio.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _itemDrawer =0 ;

  _getDrawerItem(int position){
    switch(position){
      case 0: return Inicio();
      case 1: return ejemplo();
      case 2: return ejemplo2();
      case 3: return ejemplo3();
    }
  }
  void _onSelectItemDrawer(int pos){
    Navigator.pop(context);
    setState(() {
      _itemDrawer = pos ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(117, 246, 110, 36),
              ),
              child: Text(
               // Ink.image(image: /mia.jpg)
                'EMILITO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
              ),
              onTap: (){
                _onSelectItemDrawer(0);
              },
            ),
           // Divider(
            //  color: Color.blue,
           // ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('ejemplo'),
            onTap: (){
             _onSelectItemDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('ejemplo2'),
                  onTap: (){
                _onSelectItemDrawer(2);
              },
            ),
            Divider(
             color: Colors.blue,
                    ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('ejemplo3'),
                 onTap: (){
                _onSelectItemDrawer(3);
                 },
            ),
          ],
        ),
      ),
      body: _getDrawerItem( _itemDrawer),
    );
  }
}