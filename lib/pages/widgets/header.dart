import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/assetPaths.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      color: AppColors.purpleColor,
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: size.width * 0.08,
            child: ClipOval(
              child: Image.asset(
                AssetsPaths.profileImage,
                fit: BoxFit.cover,
                width: size.width,
                height: size.height,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: TextStyles().titleSmall()),
              const SizedBox(height: 4),
              Text('Mistry Simon', style: TextStyles().titleMedium()),
            ],
          ),
          const Spacer(),
          Image.asset(
            '${AssetsPaths.icons}/setting.png',
            width: size.width * 0.075,
          )
        ],
      ),
    );
  }
}
