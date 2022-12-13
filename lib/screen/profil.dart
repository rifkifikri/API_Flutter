
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfill extends StatelessWidget {
  const MyProfill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('MyProfil'),
      centerTitle: true,
        backgroundColor: Colors.redAccent,
    ),
    body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 166, 213, 251)
        ),
        child: Column(       
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CircleAvatar(
                    backgroundImage: AssetImage('assets/potoku.jpeg'),
                    minRadius: 50,
                    maxRadius: 75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 131, 196, 250).withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Nama : Muhammad Rifki Fikri Firdaus',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text('NIM : 1462000282',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text('Tempat/TGL Lahir : Mojokerto/30 Maret 2001',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text('IPK : 3.78',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    ),
   ); 
  }
}
