import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kegiatan_3/main.dart';
import 'package:kegiatan_3/screen/profil.dart';
import 'package:http/http.dart' as http;

import 'login.dart';
import 'nilai.dart';

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
        title:Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              
              decoration: BoxDecoration(
                
                //color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  image: AssetImage("assets/untag.jpg"),
                     fit: BoxFit.cover),
              ) ,
              child: Text('1462000282_Rifki',
              style: TextStyle(
                fontSize: 15,
                color: Colors.brown,
                fontWeight: FontWeight.bold
              ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder( //<-- SEE HERE
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 53, 98, 135)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Theme.of(context).primaryColorLight,
                    title: Text(
                     'Transkrip Nilai',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (conrtext)=>Nilai()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder( //<-- SEE HERE
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 53, 98, 135)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Theme.of(context).primaryColorLight,
                    title: Text(
                     'Profil',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfill()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder( //<-- SEE HERE
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 53, 98, 135)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Theme.of(context).primaryColorLight,
                    title: Text(
                     'Log Out',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                ),
              )
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 248, 191),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Nama mhs : Muhammad Rifki Fikri Firdaus',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Text('NIM      : 1462000282',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Jenis Kelamin : L(laki-laki)',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),),
                          
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Fakultas/jurusan : Fakultas Teknik/ Teknik Informatika',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Periode Daftar   : Semester Gasal 2020-2021',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Semester Mhs     : 5',
                          style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height:MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.92,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight: Radius.circular(10)),
                  ) ,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month, color: Colors.white,),
                        Text(' Jadwal Perkuliahan Mingguan', style: TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              Container( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(left: 17, right: 17),  
                      child: Table(
                        defaultColumnWidth: IntrinsicColumnWidth(),
                        border: TableBorder.all(  
                          color: Colors.black,  
                          style: BorderStyle.solid,  
                          width: 1),  
                        children: [
                          TableRow( children: [  
                          Column(
                            children:[
                            Text('No', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                            
                            ]),  
                          Column(children:[Text('Matakuliah', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))]),  
                          Column(children:[Text('kelas', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))]),
                          Column(children:[Text('jadwal', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))]),  
                        ]),
                        TableRow(
                          children: [
                            Column(children: [Text('1', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('146290 Kerja Praktek', style: TextStyle(fontSize: 10))]),  
                            Column(children:[Text('A', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('Sabtu, 07.50-09.30 Ruang Q301', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('2', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('146830 Sistem Keamanan Siber', style: TextStyle(fontSize: 10))]),  
                            Column(children:[Text('E', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('Kamis, 09.30-12.00 Ruang N401', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          
                          children: [
                            Column(children: [Text('3', style: TextStyle(fontSize: 7)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('146424 Sistem Aplikasi Multimedia', style: TextStyle(fontSize: 10))]),  
                            Column(children:[Text('E', style: TextStyle(fontSize: 7))]),
                            Column(children:[Text('Jumat, 09.30-12.00 Ruang Q306', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('4', style: TextStyle(fontSize: 7)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children:[Text('146938 Pengolahan Citra Digital', style: TextStyle(fontSize: 10))]),  
                            Column(children:[Text('E', style: TextStyle(fontSize: 7))]),
                            Column(children:[Text('Senin, 12.00-14.00 Ruang Q306', style: TextStyle(fontSize: 9)),
                                  Text('Rabu, 12.00-14.00 Ruang Q306', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('5', style: TextStyle(fontSize: 7)),],),
                            Column(children:[Text('14679 Pengolahan Bahasa Alami & Text Mining', style: TextStyle(fontSize: 9))]),  
                            Column(children:[Text('A', style: TextStyle(fontSize: 7))]),
                            Column(children:[Text('Selasa, 09.30-12.00 Ruang Q301', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('6', style: TextStyle(fontSize: 7)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('146020 Pengembangan Aplikasi Bergerak', style: TextStyle(fontSize: 9))]),  
                            Column(children:[Text('E', style: TextStyle(fontSize: 7))]),
                            Column(children:[Text('Selasa, 12.00-14.00 Ruang Q301', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('7', style: TextStyle(fontSize: 7)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('146097 Entrepreneurship', style: TextStyle(fontSize: 10))]),  
                            Column(children:[Text('E', style: TextStyle(fontSize: 7))]),
                            Column(children:[Text('Jumat, 12.00-14.00 Ruang Q306', style: TextStyle(fontSize: 9))]),
                          ]
                        )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //tanggal hari ini
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Sabtu, 10 September 2022',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
              ),
              //jadwal yang sedang berlangsung
              Container(
                margin: EdgeInsets.only(left: 17, right: 17),
                child: Table(
                  
                  border: TableBorder.all(  
                            color: Colors.black,  
                            style: BorderStyle.solid,  
                            width: 1),
                 children: [
                  TableRow( children: [  
                            Column(
                              children:[
                              Text('Mulai', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold)),
                              
                              ]),  
                            Column(children:[Text('Selesai', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),  
                            Column(children:[Text('Matakuliah', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Pengajar', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),  
                          ], ),
                    TableRow( children: [  
                            Column(
                              children:[
                              Text('7.50', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold)),
                              
                              ]),  
                            Column(children:[Text('09.30', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),  
                            Column(children:[Text('Entrepreneurship', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Supangat, S.Kom., M.Kom.', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold))]),  
                          ]),
                 ] ,
                ),
              )
            ],
          )
        ),
        
      )
    );
  }
}
//tanda seru digunakan untuk mengantisipasi error
//tnnda tanya digunakan untuk variabel jika di gunakan di kemudian hari