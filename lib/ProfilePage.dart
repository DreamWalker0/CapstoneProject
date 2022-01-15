import 'package:flutter/material.dart';
import 'package:working_it/main.dart';

//This class is where a the user profile is implemented
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'https://i.pinimg.com/originals/ed/56/fc/ed56fc131d3a01fada96eec9a3f8d1f1.jpg',
        //fit: BoxFit.scaleDown,
      ),
    );
  }
}
