import 'package:son/Sqlite/user_inputs.dart';
import 'package:son/Sqlite/user_model.dart';
import 'package:son/Sqlite/user_service.dart';
import 'package:flutter/material.dart';

DbUtils utils = DbUtils();

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<User> userList = [];
  void getData() async {
    await utils.users().then((result) => {
      setState(() {
        userList = result;
      })
    });
    print(userList);
  }
  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(userList.length.toString() + " Users listed")),
      body: SingleChildScrollView(
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
                    onTap: () {
                      showAlert("User " + index.toString() + " clicked",
                          "User " + index.toString() + " clicked");
                    },
                    onLongPress: () async {
                      await utils.deleteUser(userList[index].id).then((value) => {
                        showAlert("User " + index.toString() + " deleted",
                            "User " + index.toString() + " deleted")
                      });
                      getData();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Userhome()),
                    );
                  },
                  child: Text("Sqlite'a dön")),
            ),
          ],
        ),
      ),
    );
  }
}
