import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:latihan/screen/match_card.dart';
import 'package:latihan/screen/news.dart';
import 'package:latihan/utile/apps_style.dart';
import '../utile/app_info_list.dart';
import '../utile/app_layout.dart';
import 'news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: const Text('Berita Persigar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/banner.jpg"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                        height: 200), // Memberikan ruang untuk gambar di atas
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Styles.bgColor,
                        ),
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        // Konten di dalam Container Align
                        child: Text(
                          'Konten Align',
                          style: TextStyle(fontSize: 16, color: Styles.bgColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                children: newsList
                    .take(1)
                    .map((singleNews) => NewsBaru(news: singleNews))
                    .toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  children: newsList
                      .map((singleNews) => NewsBarulagi(news: singleNews))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
