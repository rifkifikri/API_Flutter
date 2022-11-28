// import 'package:http/http.dart' as http;

// void main() async{
//   await getDataUser();
// }

// Future getDataUser() async{
//     Uri url = Uri.parse('https://reqres.in/api/uses?page=2');

//     var response = await http.get(url);
//     print(response.statusCode);
//     if(response.statusCode !=200){
//       print('user not found');
//     }else{
//       print(response.body);
//     }
//   }