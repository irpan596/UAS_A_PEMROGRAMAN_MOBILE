import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:latihan/screen/news_page.dart';
import 'package:flutter/widgets.dart';
import 'package:latihan/utile/app_info_list.dart';
import 'package:latihan/utile/apps_style.dart';
import 'package:gap/gap.dart';

import '../utile/app_layout.dart';
import '../widgets/text_widget.dart';
import 'match_card.dart';
import 'match_page.dart';
import 'news.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                //Kotak biru paling atas
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), 
                      topRight: Radius.circular(20), 
                      bottomLeft: Radius.circular(0), 
                      bottomRight: Radius.circular(0)
                    ),
                    color:  Color(0xFF82AAE3),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("UPCOMING MATCH", style: Styles.headlineStyle3. copyWith(color: Colors.white)),
                  ]),
                ),
                //kotak isi putih
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0), 
                      topRight: Radius.circular(0), 
                      bottomLeft: Radius.circular(0), 
                      bottomRight: Radius.circular(0)
                    ),
                    color:  Color(0xFFFFFFFF)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     //Tampilan Klub Kiri
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                "assets/image/PERSIB.png"
                              )
                            )
                            ),
                          ),
                          const Gap(5),
                          const Text("Persib"),
                        ],
                      ),
                      //Tampilan Detail Match
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Next Match", style: Styles.headlineStyle3),
                          Text("VS", style: Styles.headlineStyle4),
                          Text("12:00 WIB", style: Styles.textStyle),
                        ],
                      ),
                      //Tampilan Klub Kanan
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                "assets/image/PERSIGAR.png"
                              )
                            )),
                          ),
                          const Text("Persigar"),
                        ],
                      ),
                    ],
                  ),
                ),               
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0), 
                      topRight: Radius.circular(0), 
                      bottomLeft: Radius.circular(20), 
                      bottomRight: Radius.circular(20)
                    ),
                    color:  Color(0xFF91D8E4),
                  ),
                  padding: const EdgeInsets.all(20),
                ),
                
              ],

            ),
          ),
          const Gap (15),
          //UPCOMING MATCH TULISAN
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(         
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("ALL MATCH", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>MatchPage())
                    );
                  },
                  child: const Text(
                    "view all",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: matchlist.map((singlematch) => MatchCard(match: singlematch,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(         
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Hot NEWS', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>NewsPage())
                    );
                  },
                  child: const Text(
                    "view all",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          //Tulisan produk pilihan
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children:  newsList.map((singleNews) => NewsBaru(news: singleNews)).toList()
            ),
          ),
          const Gap(40),
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
                      image: AssetImage("assets/image/PERSIGARBW3.png"))
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  
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
                          image: AssetImage("assets/image/LOGO.png"))
                      ),
                      padding: EdgeInsets.all(AppLayout.getHeight(16))
                    ),
                    Container(
                      width: 100,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.zero,
                        image: DecorationImage(
                          image: AssetImage("assets/image/ni.png"))
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                    ),
                  ],
                ),
              Text(
                      "All Right Reserved 2023",
                      style: Styles.headlineStyle4.copyWith(color: Colors.white),
              ),
              ], 
            ),
          )       
        ],
      ),
    );   
  }
}