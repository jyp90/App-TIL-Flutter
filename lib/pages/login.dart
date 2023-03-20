import 'package:flutrain/components/images.dart';
import 'package:flutrain/pages/appbar.dart';
import 'package:flutrain/pages/login_theme.dart';
import 'package:flutter/material.dart';
import '../components/comp.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var primary = Colors.purple[400];

    return Scaffold(
        appBar: getAppBar('Login', primary),
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  Center(
                      child: getImage('assets/vely.png')
                  ),
                  Form(
                      child: Theme(
                          data: getAppTheme(primary),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                getIdLabel(controller1),
                                getPasswordLabel(controller2),
                                const SizedBox(height: 40.0),
                                getNextStepButton(context, controller1, controller2),
                              ],
                            ),
                          )))
                ],
              ),
            );
          }
        ));
  }
}

