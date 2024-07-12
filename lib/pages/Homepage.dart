import 'package:book_appointment/pages/widgets/address.dart';
import 'package:book_appointment/pages/widgets/book_field.dart';
import 'package:book_appointment/pages/widgets/header.dart';
import 'package:book_appointment/pages/widgets/problems_list.dart';
import 'package:book_appointment/pages/widgets/specialitsts.dart';
import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/assetPaths.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.purpleColor,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            height: size.height,
            child:
                // Container(
                //   height: size.height * 0.45,
                //   decoration: BoxDecoration(
                //       color: AppColors.purpleColor,
                //       borderRadius: BorderRadius.only(
                //           bottomLeft:
                //               Radius.elliptical(size.width * 0.1, 8),
                //           bottomRight:
                //               Radius.elliptical(size.width * 0.95, 180))),
                // ),
                // Container(
                //   height: size.height * 0.22,
                //   decoration: const BoxDecoration(),
                // ),
                // Container(
                //   height: size.height * 0.25,
                //   decoration: BoxDecoration(
                //       color: AppColors.greenColor,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(size.width * 0.1),
                //           topRight: Radius.circular(size.width * 0.1))),
                // ),

                SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: size.height * 0.25,

                    decoration: const BoxDecoration(
                      color: AppColors.purpleColor,
                    ),
                    child: Column(
                      children: [
                        const Header(),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: SearchBar(
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.white),
                              elevation: const WidgetStatePropertyAll(0),
                              padding: const WidgetStatePropertyAll(
                                  EdgeInsets.only(left: 13, right: 20)),
                              trailing: [
                                Image.asset(
                                  '${AssetsPaths.icons}/search-normal.png',
                                  width: size.width * 0.06,
                                )
                              ],
                              hintText: 'Search doctor',
                              hintStyle: const WidgetStatePropertyAll(TextStyle(
                                fontSize: 12,
                                color: AppColors.footerColor,
                                fontWeight: FontWeight.w700,
                              ))),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.25,
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              color: AppColors.purpleColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.elliptical(size.width * 0.1, 8),
                                  bottomRight: Radius.elliptical(
                                      size.width * 0.95, 180)),
                            ),
                          ),
                          Container(
                            height: size.height * 0.22,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: size.height * 0.16,
                            decoration: BoxDecoration(
                                color: AppColors.greenColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(size.width * 0.1),
                                    topRight:
                                        Radius.circular(size.width * 0.1))),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              'Appointment Booking',
                              style: TextStyles().titleMedium(),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const BookingField(),
                        ],
                      )
                    ],
                  ),

                  // const SizedBox(height: 35),
                  const ProblemsList(),
                  const SizedBox(height: 35),
                  Specialists(),
                  const SizedBox(height: 35),
                  const Address(),
                  const SizedBox(height: 105),
                ],
              ),
            ),
          ),
        ));
  }
}
