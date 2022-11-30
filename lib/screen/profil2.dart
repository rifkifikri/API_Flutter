// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Profil extends StatelessWidget {
  
//    Profil({Key? key}) : super(key: key, required this.detail);
//   var detail;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }

// return SingleChildScrollView(
//             child: Center(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Container(
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             backgroundImage: NetworkImage(widget.detail['avatar']),
//                             minRadius: 50,
//                             maxRadius: 75,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.5,
//                       width: MediaQuery.of(context).size.width*0.7,
//                       decoration: BoxDecoration(
//                         color: Colors.purple,
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(50),
//                           bottomLeft: Radius.circular(50)
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(' First Name : ${snapshot.data!['data'][2]['first_name']}',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold
//                           ),
//                           ),
//                           Text(' Last Name : ${snapshot.data!['data'][2]['last_name']}',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold
//                           ),
//                           ),
//                           Text(' Full Name : ${snapshot.data!['data'][2]['first_name']} ${snapshot.data!['data'][2]['last_name']}',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold
//                           ),
//                           ),
//                           Text(' Email : ${snapshot.data!['data'][2]['email']}',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold
//                           ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//             );