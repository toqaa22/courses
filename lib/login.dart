import 'package:courses/nav-bar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade400,
        centerTitle: true,
        title: Text('My Courses'),

      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget> [
              TextFormField(

                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.cyan.shade500,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 2,
                    ),

                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onFieldSubmitted: (value){
                  if(formkey.currentState!.validate()){
                    print(value);
                  }

                },
                validator: (value){ {
                  if(value!.length<=3){
                    return 'too short';


                  }

                }  },
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.cyan.shade500,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 2,
                    ),

                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>  Navbar(),
                    ),
                    );
                  },

                  color: Colors.cyan.shade200,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 80,
                  ),

                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  shape: OutlineInputBorder(
                    borderSide: BorderSide.none,

                    borderRadius: BorderRadius.circular(20),


                  ),


                ),


              ),


            ],
          ),
        ),

      ),

    );
  }
}
