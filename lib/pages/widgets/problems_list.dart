import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/assetPaths.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ProblemsList extends StatefulWidget {
  const ProblemsList({super.key});

  @override
  State<ProblemsList> createState() => _ProblemsListState();
}

class _ProblemsListState extends State<ProblemsList> {
  final problems = [
    {
      'name': 'Dental Braces',
      'icon': 'teeth_view.png',
      'active': true,
    },
    {
      'name': 'Dental Crown',
      'icon': 'teeth.png',
      'active': false,
    },
    {
      'name': 'Dental Filling',
      'icon': 'teeth_insert.png',
      'active': false,
    },
    {
      'name': 'Anesthesia',
      'icon': 'teeth_speker.png',
      'active': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: AppColors.greenColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(size.width * 0.1),
              bottomRight: Radius.circular(size.width * 0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Problems',
            style: TextStyles().titleMedium(color: Colors.black),
          ),
          const SizedBox(height: 20),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: problems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (problems[index]['active'] == true) {
                      setState(() {
                        problems[index]['active'] = false;
                      });
                    } else {
                      setState(() {
                        problems[index]['active'] = true;
                      });
                    }
                  },
                  child: Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff5AE0AE),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(-10, -10),
                              color: Colors.white.withOpacity(0.21),
                              spreadRadius: 4,
                              blurRadius: 8,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.2,
                                height: size.width * 0.12,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color(0xff5CE9B4),
                                    border: Border.all(
                                        color: AppColors.lightBackgroundColor,
                                        width: 0.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: AppColors.greenColor,
                                        blurRadius: 5,
                                      )
                                    ]),
                                child: Image.asset(
                                  '${AssetsPaths.icons}/${problems[index]['icon']}',
                                  width: size.width * 0.06,
                                ),
                              ),
                              Image.asset(
                                problems[index]['active'] == true
                                    ? '${AssetsPaths.icons}/selected.png'
                                    : '${AssetsPaths.icons}/unselected.png',
                                width: size.width * 0.07,
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            problems[index]['name'].toString(),
                            style:
                                TextStyles().titleMedium(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
          const SizedBox(height: 25),
          Center(
            child: Container(
              padding:
                  const EdgeInsets.only(top: 2, left: 2, bottom: 2, right: 20),
              width: size.width * 0.12,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Container(
                // width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.greenColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
