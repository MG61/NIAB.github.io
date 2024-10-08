import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_niab/widgets/social_networks.dart';
import '../../constants/colors.dart';
import '../../constants/items/nav_items.dart';
import '../site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      //Блюр верхнего колонтитула
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: Container(
          color: CustomColor.toolbarColor,
          height: 60,
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //Лого
            children: [
              SiteLogo(
                onTap: () {},
              ),
              const Spacer(), // Разделитель
              //Генерация вкладок
              for (int i = 0; i < navTitles.length; i++) // Цикл из 5-ти кнопок
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {
                      onNavMenuTap(i);
                    },
                    child: Text(
                      navTitles[i],
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),

              const Spacer(),

              //Иконки социальных сетей
              const SocialNetworks(),
            ],
          ),
        ),
      ),
    );
  }
}
