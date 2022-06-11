
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'home_page.dart';


class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;
  const LoginWidget({Key? key,required this.onClickedSignUp}):super(key: key);
  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
      ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            TextField(
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: 'Email',),
            ),
            SizedBox(height: 4,),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText:'Password'),
              obscureText: true,
            ),

            SizedBox(height: 20,),
            ElevatedButton.icon(style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50)),
              icon: Icon(Icons.lock_open,size: 32,),
              label: Text('Giriş',
                  style:TextStyle(fontSize: 24)),
              onPressed: signIn,
            ),
            SizedBox(height: 24,),
            RichText(text: TextSpan(style: TextStyle(color:Colors.white),
              text: 'Hesabın yok mu? ',children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap=widget.onClickedSignUp,

                  text: 'Kaydol',style: TextStyle(
                    decoration: TextDecoration.underline,
                    color:Theme.of(context).colorScheme.secondary
                ),),
              ],),
            )

          ],
        ),),
    );

  }
  Future signIn() async {
    showDialog(context: context,
        barrierDismissible: false,
        builder: (context)=>Center(child:CircularProgressIndicator(),));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),);
    }on FirebaseAuthException catch (e){
      print(e);
    }
    String uid=FirebaseAuth.instance.currentUser!.uid;
    final docuser=await FirebaseFirestore.instance.collection('kullanıcılar').doc(uid).set(
      {

        'girisyaptimi':true,
        'sonGiristarihi':FieldValue.serverTimestamp(),
      },
      SetOptions(merge:true),
    );

    navigatorKey.currentState!.popUntil((route)=> route.isFirst);
  }

}
