import 'package:flutter/material.dart';

TextField getIdLabel() {
  return const TextField(
    decoration:
    InputDecoration(labelText: '아이디를 입력해주세요.'),
    keyboardType: TextInputType.emailAddress,
  );
}

TextField getPasswordLabel() {
  return const TextField(
    decoration:
    InputDecoration(labelText: '비밀번호를 입력해주세요.'),
    keyboardType: TextInputType.text,
    obscureText: true,
  );
}

ButtonTheme getNextStepButton() {
  return ButtonTheme(
    minWidth: 100.0,
    height: 50.0,
    child: ElevatedButton(
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 35.0,
      ),
      onPressed: () {},
    ),
  );
}