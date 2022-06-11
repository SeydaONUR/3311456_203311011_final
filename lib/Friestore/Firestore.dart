
import 'package:son/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FireStoreApp());
}
class FireStoreApp extends StatefulWidget {
  const FireStoreApp({Key? key}) : super(key: key);

  @override
  State<FireStoreApp> createState() => _FireStoreAppState();
}

class _FireStoreAppState extends State<FireStoreApp> {
  final textController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    CollectionReference users=
    FirebaseFirestore.instance.collection('users');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(controller:textController,),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>anasayfa()));
              },child: Text('Anasayfa'),
            ),
          ],
        ),
        body:
        Center(

          child: StreamBuilder(

              stream:users.orderBy('name').snapshots(),

              builder: (context,AsyncSnapshot<QuerySnapshot> snapshot ){
                if(!snapshot.hasData){
                  return Center(child: Text('Loading'),);
                }
                return ListView(

                  children: snapshot.data!.docs.map((user){

                    return Center(

                      child: ListTile(
                        onLongPress: (){
                          user.reference.delete();
                        },
                        title: Text(user['name'],),

                      ),

                    );

                  }).toList(),

                );

              }

          ),


        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: (){
            users.add({
              'name':textController.text,
            });
            textController.clear();
          },
        ),
      ),
    );
  }
}

