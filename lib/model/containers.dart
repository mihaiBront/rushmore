import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class _RushmoreContainer extends Container{
  _RushmoreContainer({super.key}){
    return;
  }

  draw(){
    log("Not implemented");
  }
}

class GameContainer extends _RushmoreContainer{
  final String gameTitle;
  final String pathToBackground;
  final Color colorBackground;
  final List<String> iconFileName =  ['assets/default.png'];

  GameContainer(this.gameTitle, this.pathToBackground,
      this.colorBackground, {String? pathIcon}): super(key: GlobalKey())
  {
    if(pathIcon != null)
    {
      iconFileName[0] = 'assets/$pathIcon.png';
    }
  }

  @override
  draw() {
    return Container(
      width: double.maxFinite,
      height: 110,
      margin: const EdgeInsets.fromLTRB(5,2,5,2),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/default.png'),
          opacity: 0.16,
          fit: BoxFit.fitWidth
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: colorBackground
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child:
                Text(
                  gameTitle,
                  style: GoogleFonts.hind(
                    textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                  )
                )
              ),
              Image(
                image: AssetImage(iconFileName[0]),
                fit: BoxFit.fitHeight,
              )
            ]
          )
        ],
      ),
    );
  }
}