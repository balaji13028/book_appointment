import 'package:book_appointment/utils/app_colors.dart';
import 'package:book_appointment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookingField extends StatelessWidget {
  const BookingField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            textfield('Enter Name'),
            textfield('Choose Date & Time'),
            textfield('Choose Problem'),
            textfield('Choose Test'),
            textfield('Choose Consultation'),
            const SizedBox(height: 10),
            MaterialButton(
              textColor: Colors.white,
              elevation: 8,
              splashColor: AppColors.purpleColor,
              minWidth: double.infinity,
              color: AppColors.purpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(13),
              onPressed: () {},
              child: Text(
                'Book Appointmnet',
                style: TextStyles().titleMedium(),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget textfield(String text) {
    return Column(
      children: [
        SearchBar(
          elevation: const WidgetStatePropertyAll(4),
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          shadowColor:
              const WidgetStatePropertyAll(AppColors.lightBackgroundColor),
          hintText: text,
          hintStyle: const WidgetStatePropertyAll(TextStyle(
            fontSize: 12,
            color: AppColors.footerColor,
            fontWeight: FontWeight.w700,
          )),
          textStyle: const WidgetStatePropertyAll(TextStyle(
            fontSize: 12,
            color: AppColors.footerColor,
            fontWeight: FontWeight.w700,
          )),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
