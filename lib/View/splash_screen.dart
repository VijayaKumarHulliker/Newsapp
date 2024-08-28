import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/View/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 4), () { 
Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height *1;
    final width = MediaQuery.sizeOf(context).width *1;
    return Scaffold( 
      body: Container( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset('images/splash.png',
            fit: BoxFit.cover,
            width: width*.9,
            height: height*.5,

            ),
            SizedBox(height: height* .04,),
            Text("TOP HEADLINES",style: GoogleFonts.anton
            (letterSpacing: .6,color: Colors.grey.shade700),),
            SizedBox(height: height*0.04,),
            SpinKitChasingDots(color: Colors.blue,size: 40,)
          ],
        ),
      ),
    );
  }
}