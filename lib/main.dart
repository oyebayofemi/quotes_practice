import 'dart:math';

import 'package:flutter/material.dart';
import 'user.dart';
import 'userCardTemplate.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> names = [
    User(username: 'Baddoo45', password: 'iLoveYou', fullname: 'Drake Fture'),
    User(
        fullname: 'Oyebayo Oluwafemi Jeremiah',
        password: 'spectre@89',
        username: 'Oyebayo1000'),
    User(
        username: 'Fato89',
        password: 'oluwafarto',
        fullname: 'Oyebayo Folajinmi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Users'),
        ),
        body: Column(
          children: names.map((ex) => UserCardTemplate(texts: ex)).toList(),
        ));
  }
}
