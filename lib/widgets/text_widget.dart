import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screen/news_detail.dart';
import '../utile/apps_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Map<String, dynamic> news;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText, required this.news}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headlineStyle2,),
        InkWell(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=>SecondPage(item: news),),); // Ganti OtherPage() dengan halaman tujuan Anda

          },
         child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor), )),
      ],
      );
  }
}