// ignore_for_file: file_names
import 'package:flutter/material.dart';

class VideogamesScreen extends StatelessWidget {

  static const String name = 'videogames_screen';

  const VideogamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Videogames Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}