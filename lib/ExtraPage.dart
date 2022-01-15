import 'package:flutter/material.dart';
import 'package:working_it/main.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
              "'These aren't the droids you are looking for'",
              style: TextStyle(fontSize: 18)))
    );
  }
}
