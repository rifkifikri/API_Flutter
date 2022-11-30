import 'package:flutter/material.dart';
import 'package:kegiatan_3/screen/home.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
         
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                
                 Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                   child: Lottie.asset("assets/profileLoader.json",
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.width * 0.7,
                         ),
                 ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          
                          borderSide: BorderSide(color: Colors.deepPurple,),
                          borderRadius: BorderRadius.circular(50)
                          )
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                    )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3
                          ),
                          borderRadius: BorderRadius.circular(50),
                          
                          ),
                          
                        //icon: Icon(Icons.lock,color: Colors.grey,),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    
                      onPressed: (){
                      if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHome())
                          );
                        }
                      
                    }, child: Text("Submit"),
                    style: ButtonStyle(
                      
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                      overlayColor: MaterialStateProperty.all(Color.fromARGB(255, 179, 154, 223)),
                    ),
                  ),
                  
                )
              ],
            ),
          ),
        )),
  );
  }
}
