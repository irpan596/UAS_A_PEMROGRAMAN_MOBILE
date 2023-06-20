import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utile/app_layout.dart';
import '../utile/apps_style.dart';

class SecondPage extends StatelessWidget {
  final Map<String, dynamic> item;

  const SecondPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Berita Persigar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/${item['image']}"))),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "${item['judul']}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${item['berita']}",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Gap(100),
              //bawah
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF82AAE3),
                ),
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                child: Column(
                  children: [
                    const Gap(15),
                    Container(
                      width: 300,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/image/PERSIGARBW3.png"))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                    ),
                    const Gap(15),
                    Text(
                      "PARTNERSHIP  :",
                      style: Styles.headlineStyle.copyWith(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 85,
                            height: 85,
                            decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.zero,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/image/LOGO.png"))),
                            padding: EdgeInsets.all(AppLayout.getHeight(16))),
                        Container(
                          width: 100,
                          height: 85,
                          decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.zero,
                              image: DecorationImage(
                                  image: AssetImage("assets/image/ni.png"))),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 40),
                        ),
                      ],
                    ),
                    Text(
                      "All Right Reserved 2023",
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
