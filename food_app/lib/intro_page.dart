import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 116, 108),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            Text('INDIAN FOOD',
           
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
               color: Colors.white,
            ),),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/ss1.png'),
              ),

            const SizedBox(height: 5),
            Text('THE TASTE OF ''THE INDIAN FOOD',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 44,
              color: Colors.white,
              
          
            ),),
             const SizedBox(height: 2),
             Text('Feel the taste of the most populer indian food from anywhere and anytime',
             style: TextStyle(
              fontSize: 20,
              height: 2.0,
              color: Color.fromARGB(255, 141, 200, 198),
             ),),
               const SizedBox(height: 2),
               MyButton(text: "get Started",
               onTap: (){
                Navigator.pushNamed(context, './menuPage');
               },)
          ],
        ),
      ),
    );
  }
}