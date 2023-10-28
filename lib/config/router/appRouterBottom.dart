// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:GameMentor/src/screens/screens.dart';

class AppRouterBottom extends StatelessWidget {
  final int index;

  const AppRouterBottom({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const HomeScreen(),
      const CoachesScreen(),
      const VideogamesScreen(),
      const ActivitiesScreen(),
      const ProfileConfig(),
    ];
    return Scaffold(
      body: myList[index],
    );
  }
}