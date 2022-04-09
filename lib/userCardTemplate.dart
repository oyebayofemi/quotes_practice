import 'package:flutter/material.dart';
import 'user.dart';

class UserCardTemplate extends StatelessWidget {
  final User texts;

  UserCardTemplate({required this.texts});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.fromLTRB(13, 13, 13, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(texts.fullname),
            Text(texts.username),
            Text(texts.password)
          ],
        ),
      ),
    );
  }
}
