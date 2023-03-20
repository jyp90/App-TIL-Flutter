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

ButtonTheme getNextStepButton(BuildContext context,
    TextEditingController controller1, TextEditingController controller2) {
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
        if (controller1.text == 'dice' && controller2.text == '1234') {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => Dice()));
        } else if(controller1.text != 'dice' && controller2.text == '1234') {
          snackBar(context, '아이디가 일치하지 않아요');
        } else if(controller1.text == 'dice' && controller2.text != '1234') {
          snackBar(context, '비밀번호가 일치하지 않아요');
        } else {
          snackBar(context, 'dice의 철자를 확인하세요');
        }
      },
    ),
  );
}

void snackBar(BuildContext ctx, String text) {
  ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(content: Text(text,
          textAlign: TextAlign.center),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.orange,)
  );
}