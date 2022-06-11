import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class SignUpWidget extends StatefulWidget {
  final Function() onClickedSignIn;
  const SignUpWidget({Key? key,required this.onClickedSignIn,}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final emailController =TextEditingController();
  final passwordController= TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          TextField(
            controller: emailController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 4,),
          TextField(
            controller: passwordController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          SizedBox(height: 20,),
          ElevatedButton.icon(style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50)),
            icon: Icon(Icons.arrow_forward,size: 32,),
            label: Text('Kaydol',
                style:TextStyle(fontSize: 24)),
            onPressed: signUp,
          ),
          SizedBox(height: 20,),
          RichText(text: TextSpan(
              text:'Zaten bir hesabınız var mı?',
              style: TextStyle(color: Colors.white,),
              children: [
                TextSpan(recognizer: TapGestureRecognizer()
                  ..onTap=widget.onClickedSignIn,
                  text: 'Oturum aç',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color:Theme.of(context).colorScheme.secondary

                  ),),
              ]),
          )
        ],
      ),
    );

  }
  Future signUp() async{
    showDialog(context: context,
      barrierDismissible: false,
      builder: (context)=>Center(child: CircularProgressIndicator(),),);
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),);
    }on FirebaseAuthException catch (e){
      print(e);
    }
    navigatorKey.currentState!.popUntil((route)=> route.isFirst);
  }
}
