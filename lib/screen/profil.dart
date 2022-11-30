
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class MyProfil extends StatefulWidget {
   MyProfil({Key? key, required this.detail}) : super(key: key);

  var detail;

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {

  Future <Map<String,dynamic>?> getDataUser() async {
    Uri url = Uri.parse('https://reqres.in/api/users?page=2');

    var response = await http.get(url);
    print(response.statusCode);

  if(response.statusCode!=200){
    print('user not found');
    return null;
  }else{

    return json.decode(response.body) as Map<String,dynamic>;
  }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('My Profill'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder <Map<String,dynamic>?>(
        future: getDataUser(),
        builder:(context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: LinearProgressIndicator());
            }else if(snapshot.hasData){
              return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  )
                ),
              height: MediaQuery.of(context).size.height*1,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(widget.detail['avatar']),
                              minRadius: 50,
                              maxRadius: 75,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.5,
                        width: MediaQuery.of(context).size.width*0.7,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end:  Alignment.topLeft,
                            colors: [
                              Colors.blue,
                              Colors.red,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(' First Name : ${widget.detail['first_name']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Text(' Last Name : ${widget.detail['last_name']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Text(' Full Name : ${widget.detail['first_name']} ${widget.detail['last_name']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Text(' Email : ${widget.detail['email']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            );
            }else{
              return Text('ERROR');
            }
            
          }
      ),
    );
  }
}