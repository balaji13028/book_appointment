import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/assetPaths.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: size.height * 0.24,
      width: size.width,
      decoration: const BoxDecoration(
        color: AppColors.footerColor,
        image: DecorationImage(
            image: AssetImage('${AssetsPaths.images}/map.png'),
            fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Address',
                  style: TextStyles().titleMedium(color: Colors.white),
                ),
              ),
              Image.asset(
                '${AssetsPaths.images}/localtion.png',
                width: size.width * 0.55,
              ),
            ],
          ),
          Positioned(
              width: size.width * 0.5,
              bottom: 30,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 15, left: 20, right: 20, bottom: 15),
                decoration: BoxDecoration(
                    color: AppColors.glassEffectColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dental Clinic',
                      style: TextStyle(
                        foreground: Paint()..shader = AppColors().textGradient,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      '#34 Harsh heights, 18th Cross Sitanagar Delhi-11007',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
