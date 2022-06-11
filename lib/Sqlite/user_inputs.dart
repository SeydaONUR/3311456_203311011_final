import 'package:son/Sqlite/user_model.dart';
import 'package:son/Sqlite/user_service.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:son/Sqlite/user_list.dart';

DbUtils utils = DbUtils();
class Userhome extends StatefulWidget {
  const Userhome({Key? key}) : super(key: key);

  @override
  State<Userhome> createState() => _UserhomeState();
}

class _UserhomeState extends State<Userhome> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController userAdController = TextEditingController();

  late Future<Database> database;
  List<User> userList = [];
  _onPressedUpdate() async {
    final enik = User(
      id: int.parse(userIdController.text),
      name: userAdController.text,
    );
    utils.updateUser(enik);
    userList = await utils.users();
    //print(dogList);
    getData();
  }
  _onPressedAdd() async {
    final enik = User(
      id: int.parse(userIdController.text),
      name: userAdController.text,
    );
    utils.insertUser(enik);
    userList = await utils.users();
    //print(dogList);
    getData();
  }

  _deleteDogTable() {
    utils.deleteTable();
    userList = [];
    getData();
  }

  void getData() async {
    await utils.users().then((result) => {
      setState(() {
        userList = result;
      })
    });
    print(userList);
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sqlite")),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userIdController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Kullanıcı ID'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userAdController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Kullanıcı adı'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: _onPressedAdd, child: Text("Kullanıcıyı kaydet")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: _onPressedAdd, child: Text("Kullanıcıyı güncelle")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: _onPressedAdd, child: Text("Kullanıcı tablosunu sil")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UsersList()),
                        );
                      },
                      child: Text("Kullanıcı listesi")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        getData();
                      },
                      child: Text("Listeyi güncelle")),
                ),
                Text(userList.length.toString()),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: userList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(userList[index].name),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}


