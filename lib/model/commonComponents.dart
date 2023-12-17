import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _GenericComponent extends Object{
  draw(){
    log("Not implemented");
  }
}

class RushAppBar extends _GenericComponent{
  final Color backgroundColor;
  final Color foregroundColor;
  final String widgetTitle;
  final double height;

  RushAppBar(this.backgroundColor, this.foregroundColor, this.widgetTitle,
      {this.height = 55});

  @override
  draw() {
    return AppBar(
      backgroundColor: backgroundColor,
      toolbarHeight: height,
      title: Text(
        widgetTitle,
        style: GoogleFonts.hind(
              color: foregroundColor,
              fontWeight: FontWeight.bold
        ),
      )
    );
  }
}