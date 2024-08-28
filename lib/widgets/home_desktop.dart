import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_niab/widgets/typing_animation.dart';

import '../constants/colors.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение ширины экрана
    final screenHeight = screenSize.height;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: Radius.zero, bottom: Radius.circular(45)),
        image: DecorationImage(
            image: AssetImage('assets/background/background.png'),
            fit: BoxFit.cover),
      ),
      height: screenHeight,
      width: screenWidth,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 60,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        CustomColor.gradientBlue,
                        CustomColor.gradientTial,
                      ],
                    ),
                  ),
                  child: Text(
                    "Добро пожаловать на мой сайт портфолио",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Я Никита Абраменко",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -3 ,
                  ),
                ),
                //Анимация текста
                const TypingAnimation(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 550,
                  child: Text(
                    "Разработчик, увлеченный созданием мобильных и веб-приложений. Сфокусировавшись на Android и Flutter, я разрабатываю эффективные и красивые решения.",
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 800,
                width: 800,
                child: Lottie.asset("assets/lottie/computer.json"),
              )
              //LottieFiles
            ],
          )
        ],
      ),
    );
  }
}
