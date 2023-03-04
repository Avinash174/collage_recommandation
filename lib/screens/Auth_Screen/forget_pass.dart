import 'package:collage_recommandation/screens/Auth_Screen/log_in/log_in.dart';
import 'package:flutter/material.dart';

class ForgetPassWord extends StatefulWidget {
  const ForgetPassWord({Key? key}) : super(key: key);

  @override
  State<ForgetPassWord> createState() => _ForgetPassWordState();
}

class _ForgetPassWordState extends State<ForgetPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('forget Password'),
      ),
      body: Column(
        children:  [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter New password',
                  hintText: 'Enter valid New Password'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-Enter Password',
                  hintText: 'Enter Valid New Password'),
            ),
          ),
          ElevatedButton(
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
          }, child: Text('Click Me'))
        ],
      ),
    );
  }
}
