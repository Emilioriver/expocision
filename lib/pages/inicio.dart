import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Emilio Alexander rodriguez rivera',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromARGB(186, 8, 180, 8)
          ),
          ),
          Image.asset('images/anime.jpg',width: 110.50,),
           SizedBox(
                height: 480,
              ),    
              ],
      ),
    );   
  }

}