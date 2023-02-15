import 'package:courses/nav-bar.dart';
import 'package:courses/profile.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan.shade200,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Navbar(),
              ),
            );
          },)
      ),
      body: Column(),
    );
  }
}
