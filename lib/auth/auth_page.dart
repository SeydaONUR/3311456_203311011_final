
import 'package:son/auth/signup_widget.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class AuthPage extends StatefulWidget {

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin=true;

  @override
  Widget build(BuildContext context) =>
      isLogin ? LoginWidget(onClickedSignUp: toogle,)
          :SignUpWidget(onClickedSignIn:toogle);
  void toogle() => setState(() =>isLogin = !isLogin);
}
