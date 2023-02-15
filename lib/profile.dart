import 'package:courses/Edit.dart';
import 'package:courses/buy.dart';
import 'package:courses/courses.dart';
import 'package:courses/login.dart';
import 'package:flutter/material.dart';

import 'nav-bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade50,
        elevation: 0,
        leading: Icon(
          Icons.people_alt_outlined,
          color: Colors.black,
        ),
        title: Text(
          "profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            // photo
            Container(
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/photo-1511367461989-f85a21fda167.jpg"),
                radius: 60,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 50,
              ),
            ),
            //toqa label
            Row(children: [ SizedBox(width: 100,),
              Text('Toqa Hisham',
                style: TextStyle(
                  fontSize: 25,

                )
            ),
              IconButton(icon: Icon(Icons.edit),onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Edit(),
                  ),
                );
              },)
            ],

            ),
            // space
            SizedBox(
              height: 30,
            ),
            //// buy courss button
            Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.cyan.shade50,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buy(),
                    ),
                  );
                },
                height: 60,

                child: Text(
                  'Buy Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(120, 0, 120, 0),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.cyan.shade200,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                height: 60,

                child: Text(
                  'LogOut',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
