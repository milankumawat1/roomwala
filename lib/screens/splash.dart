import 'dart:async';
import 'package:roomwala/themes/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roomwala/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const welcome())));
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.pri,
        child: Column(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: SvgPicture.asset("assets/images/logo.svg"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => welcome()),
                );
              },
            ),
            Spacer(),
            Spacer(),
            Text(
              'Roomwala',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Gothic',
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text(
                  'Landlord HF RW \nVersion 1.0 \nDate 22/12/2022',
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Gothic'),
                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
              ],
            ),
            // Spacer(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
