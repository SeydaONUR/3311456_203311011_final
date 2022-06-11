import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'auth/auth_page.dart';
import 'auth/home_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey=GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  static final String title='Firebase Auth';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child:CircularProgressIndicator(),);
          }
          else if(snapshot.hasError){
            return Center(child: Text('Birşeyler yanlış gitti'),);
          }
          else if(snapshot.hasData){
            return HomePage();
          }else{
            return AuthPage();
          }
        },
      ),
    );
  }
}
