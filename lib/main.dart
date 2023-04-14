import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okulproje/view/acilis_view.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      title: 'Burç Uygulması',
      home: const AcilisView(),
    );
  }
}
