import 'package:son/anasayfa.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title:Text('Profil'),
        actions: [
          ElevatedButton(style: ElevatedButton.styleFrom(
            primary: Color(0xcdcdcd), // Background color
          ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>anasayfa()),
              );
            },child: Text('Anasayfa'),),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Giriş yaptı',
              style:TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8,),
            Text(user.email!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40,),
            ElevatedButton.icon(style: ElevatedButton.styleFrom(
              primary: Color(0xcdcdcd),
              minimumSize: Size.fromHeight(50),
            ),
              icon: Icon(Icons.arrow_back,size:32,),
              label: Text('Çıkış',
                style: TextStyle(fontSize: 24),
              ),
              onPressed:()=>FirebaseAuth.instance.signOut(),
            ),

          ],
        ),
      ),
    );
  }
}
