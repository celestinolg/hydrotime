import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrotime/enum/app_colors.enum.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Text(
            'Welcome aboard! 💧',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/splash_0.png', // Certifica-te de adicionar a imagem ao diretório assets
            height: 300,
          ),
          //SizedBox(height: 20),
          Text(
            '''Ready to crush your hydration goals? 
      
We’ve got your back with easy tracking, 
friendly reminders, and cool stats. 
Let’s get sipping and stay refreshed! 🥤🚀''',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: index == 0 ? 10 : 8,
                height: index == 0 ? 10 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.blue : Colors.white38,
                ),
              );
            }),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
