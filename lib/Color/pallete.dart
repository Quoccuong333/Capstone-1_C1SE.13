import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const TextStyle kHeading = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white
);

const TextStyle kBodyText = TextStyle(
    fontSize: 22,
    color: Colors.white,
    height: 1.5
);

Color maincolor = Color(0xfff96163);
Color font = Color(0xfff3C444C);

InputDecoration buildInputDecoration(String labelText, {Widget? suffixIcon}) {
  var hintText;
  var hintFontSize;
  return InputDecoration(
    labelText: labelText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
    ),
    labelStyle: GoogleFonts.poppins(
      fontSize: 25,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    hintStyle: GoogleFonts.poppins(
      fontSize: hintFontSize,
      fontWeight: FontWeight.normal,
      color: Colors.grey[400],
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    suffixIcon: suffixIcon,
  );
}
