import 'package:bangkok_fast_call_app/fast_call_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallSplashUI extends StatefulWidget {
  const FastCallSplashUI({super.key});

  @override
  State<FastCallSplashUI> createState() => _FastCallSplashUIState();
}

class _FastCallSplashUIState extends State<FastCallSplashUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FastCallHomeUI(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 108, 108, 108),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage('assets/images/logo01.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.red,
                ),
              ),
            ),
            Text(
              'สายด่วนโรงพยาบาล',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.white,
              ),
            ),
            Text(
              'เจ็บป่วยเมื่อไหร่คิดถึงเรา\nFastcall Ambulance App',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
