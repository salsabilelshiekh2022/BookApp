import 'package:book_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: AppButton(
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            text: '19.99€',
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: AppButton(
            backgroundColor: Color(0xffEF8262),
            text: 'Free preview',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
