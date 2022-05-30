import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle Klogo = GoogleFonts.bebasNeue(
  fontWeight: FontWeight.w500,
  fontSize: 60,
  fontStyle: FontStyle.normal,
);
TextStyle Kfont = GoogleFonts.fredokaOne(
  fontWeight: FontWeight.w500,
  fontSize: 60,
  fontStyle: FontStyle.normal,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
