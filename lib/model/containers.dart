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
  final Color colorBackground;
  final List<String> sourceFilesIdentifier =  ['assets/default.png',
    'assets/default.png'];

  GameContainer(this.gameTitle,
      this.colorBackground, {String? pathIcon}): super(key: GlobalKey())
  {
    if(pathIcon != null)
    {
      sourceFilesIdentifier[0] = 'assets/${pathIcon}_ico.png';
      sourceFilesIdentifier[1] = 'assets/${pathIcon}_bg.png';
    }
  }

  @override
  draw() {
    return Container(
      width: double.maxFinite,
      height: 110,
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 9),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(sourceFilesIdentifier[1]),
          opacity: 0.7,
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
                        wordSpacing: -3,
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    )
                  )
                )
              ),
              Image(
                image: AssetImage(sourceFilesIdentifier[0]),
                fit: BoxFit.fitHeight,
              )
            ]
          )
        ],
      ),
    );
  }
}