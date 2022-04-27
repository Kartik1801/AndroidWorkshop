import 'package:flutter/material.dart';
class LoggedIn extends StatelessWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("logged in"),
      ),
      body: Center(
        child: (
          ButtonTheme(
            child: ElevatedButton(child:const Text("Back") ,
            onPressed: (){
              Navigator.pop(context);
            },),
          )
        )
      ),
    );
  }
}
