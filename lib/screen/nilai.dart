import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Nilai extends StatelessWidget {
  const Nilai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transkrip Nilai'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
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
                        Icon(Icons.chat_rounded, color: Colors.white,),
                        Text(' Daftar Nilai Mahasiswa', style: TextStyle(
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
                      margin: EdgeInsets.only(left: 17, right: 17),  
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
                            Text('No', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                            ]), 
                            Column(children:[Text('kode', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))]), 
                          Column(children:[Text('Nama Matakuliah', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))]),  
                          Column(children:[Text('Semester', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))]),
                          Column(children:[Text('Nilai', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))]),
                          Column(children:[Text('Huruf', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))]),
                        ]),
                        TableRow(
                          children: [
                            Column(children: [Text('1', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146290', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Kerja Praktek', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('90', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('A', style: TextStyle(fontSize: 10))]),
                            
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('2', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146830', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Sistem Keamanan Siber', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('90', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('A', style: TextStyle(fontSize: 9))]),
                          ]
                        ),
                        TableRow(
                          
                          children: [
                            Column(children: [Text('3', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146424', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Sistem Aplikasi Multimedia', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('A-', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('4', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146938', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children:[Text('Pengolahan Citra Digital', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('88', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('A', style: TextStyle(fontSize: 10)),]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146790', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('Pengolahan Bahasa Alami & Text Mining', style: TextStyle(fontSize: 11))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('86', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('A-', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('6', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('1460201', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Pengembangan Aplikasi Bergerak', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('90', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('A', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('7', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146097', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Entrepreneurship', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('5', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('B+', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('8', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('146034', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Pendidikan Kewarganegaraan', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('3', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('B+', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('9', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('1461038', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Pendidikan Pancasila', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('3', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('B+', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('10', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('144952', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('sistem Operasi', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('4', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('B+', style: TextStyle(fontSize: 10))]),
                          ]
                        ),
                        TableRow(
                          children: [
                            Column(children: [Text('11', style: TextStyle(fontSize: 10)),],),
                            Column(children: [Text('140492', style: TextStyle(fontSize: 10)),],),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Text('Sistem Digital', style: TextStyle(fontSize: 10))]),  
                            Column(children: [Text('4', style: TextStyle(fontSize: 10)),],),
                            Column(children:[Text('80', style: TextStyle(fontSize: 10))]),
                            Column(children:[Text('B+', style: TextStyle(fontSize: 10))]),
                          ]
                        )
                        ],
                      ),
                    )
                  ],
                ),
              ),
             
            ],
          )
        ),
      ),
    );
  }
}