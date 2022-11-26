import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Home'),
      ),
      body: ListView.builder(
        itemCount: 3,
        //itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Halooo'),
            //title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}