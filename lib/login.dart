import 'package:android_workshop_01/navigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => LoginWidget();
}

class LoginWidget extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("LOGIN", textScaleFactor: 1.50,),centerTitle: true),
        body:
        Center(
              child:
              Card(
                  elevation: 5,
                  child: ListView(
                    children:  [
                     const TextField(decoration: InputDecoration(
                       label: Text("Name"),
                       labelStyle: TextStyle(fontSize: 20)
                     )),
                      const TextField(decoration: InputDecoration(
                          label: Text("Password"),
                          labelStyle: TextStyle(fontSize: 20),
                          filled: true
                      ),
                      obscureText: true,),
                      Column(
                          children: [
                            ButtonTheme(height: 40,
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>const LoggedIn())
                              );
                            },
                            child: const Text("Submit"))
                            ),
                            ButtonTheme(height: 40,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                                },
                                    child: const Text("Redirect"))
                            )
                          ]
                      )
                    ],
                  ) )
        )
    );
  }
}
