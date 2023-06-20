import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:latihan/utile/app_layout.dart';

import '../utile/apps_style.dart';
import 'news_detail.dart';

class NewsBaru extends StatelessWidget {
  final Map<String, dynamic> news;
  const NewsBaru({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(item: news),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10, top: 5),
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        width: size.width * 0.85,
        height: AppLayout.getWidth(180),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/${news['image']}"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.black.withOpacity(0.3),
                ),
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Text(
                  "${news['judul']}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsBarulagi extends StatelessWidget {
  final Map<String, dynamic> news;
  const NewsBarulagi({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(item: news),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: size.width * 0.85,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, blurRadius: 12, spreadRadius: 5),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/image/${news['image']}"),
                        fit: BoxFit.cover),
                    color: Colors.blue,
                  ),
                  width: 100,
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("${news['judul']}"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
