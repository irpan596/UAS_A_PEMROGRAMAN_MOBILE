import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utile/app_layout.dart';
import '../utile/apps_style.dart';
import 'match_detail.dart';

class MatchCard extends StatelessWidget {
  final Map<String, dynamic> match;
  const MatchCard({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MatchDetail(item: match),
          ),
        );
      },
      child: SizedBox(
        width: size.width * 0.9,
        height: AppLayout.getHeight(180),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 12,
                      spreadRadius: 5),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color(0xFFFFFFFF)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Tampilan Klub Kiri
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/image/${match['home']['logo']}"))),
                    ),
                    const Gap(5),
                    Text("${match['home']['name']}"),
                  ],
                ),
                //Tampilan Detail Match
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hasil Akhir",
                        style: Styles.headlineStyle3.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Gap(5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Column(children: [
                        Text("${match['skor']}",
                            style: Styles.headlineStyle
                                .copyWith(color: Colors.black)),
                      ]),
                    ),
                    Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Column(children: [
                        Text("DETAIL",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.black)),
                      ]),
                    ),
                  ],
                ),
                //Tampilan Klub Kanan
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/image/${match['to']['logo']}"))),
                    ),
                    Text("${match['to']['name']}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MatchCardlagi extends StatelessWidget {
  final Map<String, dynamic> match;
  const MatchCardlagi({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MatchDetail(item: match),
          ),
        );
      },
      child: SizedBox(
        width: size.width * 0.9,
        height: AppLayout.getHeight(180),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 12,
                      spreadRadius: 5),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color(0xFFFFFFFF)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Tampilan Klub Kiri
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/image/${match['home']['logo']}"))),
                    ),
                    const Gap(5),
                    Text("${match['home']['name']}"),
                  ],
                ),
                //Tampilan Detail Match
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hasil Akhir",
                        style: Styles.headlineStyle3.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Gap(5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Column(children: [
                        Text("${match['skor']}",
                            style: Styles.headlineStyle
                                .copyWith(color: Colors.black)),
                      ]),
                    ),
                    Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Column(children: [
                        Text("DETAIL",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.black)),
                      ]),
                    ),
                  ],
                ),
                //Tampilan Klub Kanan
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/image/${match['to']['logo']}"))),
                    ),
                    Text("${match['to']['name']}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
