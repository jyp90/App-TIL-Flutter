import 'package:flutrain/pages/dice.dart';
import 'package:flutter/material.dart';

TextField getIdLabel(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: '아이디를 입력해주세요.'),
    keyboardType: TextInputType.emailAddress,
  );
}

TextField getPasswordLabel(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: const InputDecoration(labelText: '비밀번호를 입력해주세요.'),
    keyboardType: TextInputType.text,
    obscureText: true,
  );
}

ButtonTheme getNextStepButton(BuildContext context, TextEditingController controller1, TextEditingController controller2) {
  return ButtonTheme(
    minWidth: 100.0,
    height: 50.0,
    child: ElevatedButton(
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 35.0,
      ),
      onPressed: () {
        if(controller1.text == 'dice' && controller2.text == '1234') {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => Dice()));
        }
      },
    ),
  );
}