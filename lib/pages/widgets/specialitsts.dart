import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/assetPaths.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Specialists extends StatelessWidget {
  Specialists({super.key});

  final specialists = [
    {
      'name': 'Dr.Tracy Austin',
      'role': 'Dental Specialist',
      'image': 'doctor-1.png',
    },
    {
      'name': 'Dr.Tracy Austin',
      'role': 'Dental Specialist',
      'image': 'doctor-2.png',
    },
    {
      'name': 'Dr.Tracy Austin',
      'role': 'Dental Specialist',
      'image': 'doctor-3.png',
    },
    {
      'name': 'Dr.Tracy Austin',
      'role': 'Dental Specialist',
      'image': 'doctor-4.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ColoredBox(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Our Specialists',
                style: TextStyles().titleMedium(color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: specialists.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Card(
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Container(
                            // padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.lightBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // width: size.width * 0.2,
                                    height: size.width * 0.3,
                                    clipBehavior: Clip.hardEdge,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.transparent,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        '${AssetsPaths.images}/${specialists[index]['image']}',
                                        width: size.width,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(specialists[index]['name'].toString(),
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(specialists[index]['role'].toString(),
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: -14,
                            left: size.width * 0.1,
                            right: size.width * 0.1,
                            height: size.height * 0.04,
                            child: Container(
                              alignment: Alignment.center,
                              // height: size.width * 0.02,
                              // width: size.width * 0.28,
                              decoration: BoxDecoration(
                                color: AppColors.purpleColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'Book',
                                style: TextStyles().titleMedium(),
                              ),
                            ))
                      ],
                    );
                  }),
              const SizedBox(height: 25),
            ])));
  }
}
