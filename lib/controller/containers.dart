import 'dart:developer';

import 'package:flutter/material.dart';
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
  final String pathToIcon;
  final String pathToBackground;
  final Color colorBackground;

  GameContainer(this.gameTitle, this.pathToIcon, this.pathToBackground, this.colorBackground): super(key: GlobalKey());



  @override
  draw() {
    return Container(
      width: double.maxFinite,
      height: 80.0,
      margin: const EdgeInsets.fromLTRB(5,2,5,2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: colorBackground
      ),

      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child:
                  Text(
                    gameTitle, style: GoogleFonts.hind(
                      textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                    "ICON"
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}