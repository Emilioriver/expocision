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
        title: Text('Navigation Drawer' , style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                  fontFamily: 'cursive',
                ),),
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 170, 7),
              ),
              child: Text(
               // Ink.image(image: /mia.jpg)
                'EMILITO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontFamily: 'cursive',
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
           Divider(
             color: Colors.red,
                    ),
            ListTile(
              leading: Icon(Icons.library_add_check_rounded),
              title: Text('ejemplo'),
            onTap: (){
             _onSelectItemDrawer(1);
              },
            ),
             Divider(
             color: Colors.red,
                    ),
            ListTile(
              leading: Icon(Icons.library_add_check_rounded),
              title: Text('ejemplo2'),
                  onTap: (){
                _onSelectItemDrawer(2);
              },
            ),
            Divider(
             color: Colors.red,
                    ),
            ListTile(
              leading: Icon(Icons.library_add_check_rounded),
              title: Text('ejemplo3'),
                 onTap: (){
                _onSelectItemDrawer(3);
                 },
            ),
             Divider(
             color: Colors.blue,
                    ),
          ],
        ),
      ),
      body: _getDrawerItem( _itemDrawer),
    );
  }
}