import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xffFFFADE),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0, right:10.0, bottom:20.0),
                    child: Text(
                      'TAKE ME BACK',
                      style: GoogleFonts.getFont(
                        'Quicksand',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFB9965),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 700,
          decoration: const BoxDecoration(
            color: Color(0xff18162C),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'RIDE .',
                        style: GoogleFonts.getFont(
                          'Bebas Neue',
                          color: const Color(0xffFB9965),
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:20.0, bottom:10.0),
                      child: Text(
                        'LOST ?',
                        style: GoogleFonts.getFont(
                          'Permanent Marker',
                          color: const Color(0xffFB9965),
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_ClOqK5.json'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top:20.0),
                      child: Text(
                        'It seems nothing out there...',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Quicksand',
                          color: const Color(0xffFFFADE),
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
