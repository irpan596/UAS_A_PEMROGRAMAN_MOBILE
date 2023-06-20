import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utile/app_layout.dart';
import '../utile/apps_style.dart';

class MatchDetail extends StatelessWidget {
  final Map<String, dynamic> item;

  const MatchDetail({required this.item});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Statistic'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 12, spreadRadius: 5),
                    ],
                    color:  Color(0xFFFFFFFF)
                  ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
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
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                 "assets/image/${item['home']['logo']}"
                              )
                            )
                            ),
                          ),
                          const Gap(5),
                          Text("${item['home']['name']}"),
                        ],
                      ),
                            //Tampilan Detail Match
                  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hasil Akhir",
                            style: Styles.headlineStyle3.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
                          Gap (5),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: const  BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )
                            ),
                            child: Column(
                              children :[
                                Text("${item['skor']}", style: Styles.headlineStyle.copyWith(color: Colors.black)),
                              ]
                            ),
                          ),
                          Gap(10),
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
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                  "assets/image/${item['to']['logo']}"
                                )
                              )
                            ),
                          ),
                          Text("${item['to']['name']}"),
                        ],
                      ),
                ]                 
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item['home']['t']}'),
                      Text("Tembakan"),
                      Text('${item['to']['t']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item['home']['tg']}'),
                      Text("Tembakan ke Gawang"),
                      Text('${item['to']['tg']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item['home']['pb']}'),
                      Text("Penguasaan Bola"),
                      Text('${item['to']['pb']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('${item['home']['Op']}'),
                      Text("Operan"),
                      Text('${item['to']['Op']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('${item['home']['aop']}'),
                      Text("Akurasi Operan"),
                      Text('${item['to']['aop']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item['home']['plg']}'),
                      Text("Pelanggaran"),
                      Text('${item['to']['plg']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('${item['home']['kk']}'),
                      Text("Kartu Kuning"),
                      Text('${item['to']['kk']}')
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(('${item['home']['km']}')),
                      Text("Kartu Merah"),
                      Text(('${item['to']['km']}'))
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(('${item['home']['off']}')),
                      Text("Offside"),
                      Text(('${item['to']['off']}'))
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(('${item['home']['ts']}')),
                      Text("Tendangan Sudut"),
                      Text(('${item['to']['off']}'))
                    ],
                  ),
                
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
