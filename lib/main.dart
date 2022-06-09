import 'package:flutter/material.dart';
import 'package:wider/login.dart';
import 'package:wider/register.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
        }),
  );
}
