import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main(){
  runApp(

    MaterialApp(
     debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState(){
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(


         // image: AssetImage('assets/images/splash.jpg'),
          image: NetworkImage('https://play-lh.googleusercontent.com/ahJtMe0vfOlAu1XJVQ6rcaGrQBgtrEZQefHy7SXB7jpijKhu1Kkox90XDuH8RmcBOXNn'),
          fit:BoxFit.cover,
        ),

      ),

        child: SafeArea(
          child: Center(
            child: Material(
              type: MaterialType.transparency,

              child: Center(

                child: Column(
                  children:[
                    SizedBox(height:100),
                    Text("NETFLIX",style: TextStyle(color: Colors.black,fontSize: 30),),
                    SizedBox(height: 20,),
                  CircularProgressIndicator(
                  valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
                ),
      ],

          ),
              ),
            ),
      ),
        ),
    );
  }

  Future<Timer> loadData() async{
  return new Timer(Duration(seconds: 5),onDoneLoading);

  }

  onDoneLoading() async {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MyApp()));
  }
}
