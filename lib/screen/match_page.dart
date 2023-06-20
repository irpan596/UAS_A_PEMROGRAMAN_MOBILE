import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utile/app_info_list.dart';
import '../utile/app_layout.dart';
import '../utile/apps_style.dart';
import 'match_card.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: matchlist
                    .map((singlematch) => MatchCardlagi(
                          match: singlematch,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
