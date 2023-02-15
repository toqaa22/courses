import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<String> courses = [
    'English',
    'Flutter',
    'web',
    'science',
    'Arabic',
    'C++',
  ];
  List<String> images = [
    'assets/istockphoto-1047570732-612x612.jpg',
    'assets/flutter-logo-sharing.png',
    'assets/March-12-Letter.jpg',
    'assets/images.png',
    'assets/أهمية-اللغة-العربية-ومكانتها.jpg',
    'assets/6038586442907648.png',
  ];

  @override
  Widget build(BuildContext context) {
    var width = double.infinity;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
          itemBuilder: (context, index) => coursesitems(index),
          separatorBuilder: (context, index) => SizedBox(
                height: 1,
              ),
          itemCount: courses.length),
    );
  }

  Widget coursesitems(int no) => Card(
    clipBehavior: Clip.antiAlias,
    shadowColor: Colors.blue.shade800,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
    child: Container(
      height: 200,
      decoration: BoxDecoration(
          image:DecorationImage( image: AssetImage("${images[no]}"),fit: BoxFit.fill,opacity: 0.6,),

      ),
 child: Center(
     child: Text(
       "${courses[no]}",
       style: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold,
       ),
     ),
 ),
    ),
  );
}
