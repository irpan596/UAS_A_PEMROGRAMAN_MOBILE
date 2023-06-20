import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:latihan/utile/app_layout.dart';

import '../utile/apps_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey,),
          Gap(AppLayout.getWidth(10)),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}