import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kegiatan_3/main.dart';
import 'package:kegiatan_3/screen/profil.dart';
import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

Future <Map<String,dynamic>?> getDataUser() async{
    Uri url = Uri.parse('https://reqres.in/api/users?page=2');

    var response = await http.get(url);

    print(response.statusCode);
    if(response.statusCode !=200){
      print('user not found');
      return null;
    }else{
         //var datas =json.decode(response.body) as Map<String,dynamic>;
         //print(datas['data'][1]['email']);
      return json.decode(response.body) as Map<String,dynamic> ;
      //return response.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Home'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ) ,
              child: const Center(
                child: Text('1462000282_Rifki',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
                ),
              )),
              ListTile(
                tileColor: Theme.of(context).primaryColorLight,
                  title: Text(
                   'Log Out',
                style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                },
              )
          ],
        ),
      ),
      body: FutureBuilder <Map<String,dynamic>?>(
        future: getDataUser(),
        builder: (context, snapshot) {
          if( snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData){
              return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) {
                      var map = snapshot;
                          print(map);
                      return SizedBox(
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) { return MyProfil(
                              detail:snapshot.data!['data'][index]
                            );}))
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(MediaQuery.of(context).size.width * 0.03),
                          ),
                          elevation: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width * 0.02,
                                    right: MediaQuery.of(context).size.width  * 0.02,
                                    top: MediaQuery.of(context).size.width  * 0.02,
                                    bottom: MediaQuery.of(context).size.width  * 0.02),
                                child: Container(),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(snapshot.data!['data'][index]['avatar']),
                                    ),
                                  ),
                                  Text("${snapshot.data!['data'][index]['first_name']}"),
                                ],
                              ),
                              Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.02,
                                right: MediaQuery.of(context).size.width * 0.02,
                                top: MediaQuery.of(context).size.width * 0.02,
                                bottom: MediaQuery.of(context).size.width * 0.02),
                                child: Container(),
                              ),
                            ],
                          ),
                          ),
                        ),
                      );
                      
                      //Text("${snapshot.data!['data'][index]['email']}");
                     });
          }else{
            return Text('ERROR');
          }
        },
      ),
    );
  }
}
//tanda seru digunakan untuk mengantisipasi error
//tnnda tanya digunakan untuk variabel jika di gunakan di kemudian hari