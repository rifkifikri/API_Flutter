
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

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
        backgroundColor: Colors.redAccent,
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
                   child: Lottie.asset("assets/study.json",
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.width * 0.7,
                         ),
                 ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                                ),
                    child: TextFormField(
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'NIM',
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your NIM';
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
                    decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: InputBorder.none,
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
                      
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                      overlayColor: MaterialStateProperty.all(Colors.red),
                    ),
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Lupa Password',
                  style: TextStyle(
                    color: Colors.blueAccent,
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
