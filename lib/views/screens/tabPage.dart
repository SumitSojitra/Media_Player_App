import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/utils/utils.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff0E2954),
            // title: Text("Media Booster"),
            leading: Icon(Icons.menu_rounded),
            actions: [Icon(Icons.notifications)],
            title: TabBar(
              tabs: [
                Tab(
                  text: "Music",
                  // icon: Icon(Icons.music_note_outlined),
                ),
                Tab(
                  text: "Video",
                  // icon: Icon(Icons.video_stable_outlined),
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xff0E2954),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trending Songs",
                              style: GoogleFonts.titilliumWeb(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 16,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        CarouselSlider(
                          options: CarouselOptions(
                              // autoPlayInterval: Duration(milliseconds: 200),
                              // autoPlayAnimationDuration: Duration(milliseconds: 10),
                              autoPlay: true,
                              enlargeCenterPage: true,
                              height: 160),
                          items: [
                            Container(
                              // height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://lyricskokitab.com/wp-content/uploads/2023/06/Ram-Siya-Ram-Lyrics-Song-Thumbnail.jpg"),
                                  ),
                                  color: Colors.redAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14))),
                            ),
                            Container(
                              // height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://i.ytimg.com/vi/7SvNvJIK0nM/hqdefault.jpg")),
                                  color: Colors.yellowAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14))),
                            ),
                            Container(
                              // height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://video.newsserve.net/v/20230606/1686057940-Kya-Loge-Tum-Akshay-Kumar-Amyra_hires.jpg")),
                                  color: Colors.pinkAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14))),
                            ),
                            Container(
                              // height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://www.theindianwire.com/wp-content/uploads/2022/07/Kesariya-1536x864.jpg")),
                                  color: Colors.greenAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14))),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New Albums",
                              style: GoogleFonts.titilliumWeb(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 16,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('songPage');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://mosaic.scdn.co/640/ab67616d0000b27309426d9ae9d8d981735ebc5eab67616d0000b273095191f6b96fd9eff585befcab67616d0000b2731e40e617023911c2edde677aab67616d0000b273a75c2f26913099a420050f01")),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                  Text(
                                    "BollyWood",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                        )
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://cdn.tower.jp/za/o/1W/zaP2_G3471441W.JPG")),
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                Text(
                                  "Love Tune",
                                  style: GoogleFonts.titilliumWeb(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                        )
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://assets.audiomack.com/kill-this-love/ccd879d2c1fcaafe66a852eb57f1b156772625310e06fd879e116a62a292b82d.jpeg")),
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                Text(
                                  "K-pop",
                                  style: GoogleFonts.titilliumWeb(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Artist to follow",
                              style: GoogleFonts.titilliumWeb(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 16,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://i.scdn.co/image/86213c012b11a646e3c8c67c7aa093cccf7e6b48")),
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    "Alen walker",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://starsbiog.com/wp-content/uploads/2020/05/Neha-Kakkar.jpg")),
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    "Neha kakkar",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://tse4.mm.bing.net/th?id=OIP.UDZue4c8-MaQeINf_PUioQHaEv&pid=Api&P=0&h=180")),
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    "Arijit singh",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://wallpapercave.com/wp/wp8006328.jpg")),
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    "Darshan raval",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                          )
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://static.spotboye.com/uploads/Tawde_2022-10-14-11-42-1_thumbnail.jpg")),
                                        shape: BoxShape.circle,
                                        color: Colors.blue),
                                  ),
                                  Text(
                                    "Shrusti tavde",
                                    style: GoogleFonts.titilliumWeb(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Albums",
                              style: GoogleFonts.titilliumWeb(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 16,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                        )
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://i.scdn.co/image/4b4abfb6abe97ee0212af64ec47118b29823a287")),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                Text(
                                  "Lofi Song",
                                  style: GoogleFonts.titilliumWeb(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                        )
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://i.scdn.co/image/ab67706f00000003df7e498bfc071eafd143995e")),
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                Text(
                                  "Sad Song",
                                  style: GoogleFonts.titilliumWeb(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                        )
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://tse2.mm.bing.net/th?id=OIP.Yqmg3h_KJN9Xc3r6GKHp7wHaKQ&pid=Api&P=0&h=180")),
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                Text(
                                  "Romantic",
                                  style: GoogleFonts.titilliumWeb(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                    itemCount: allVideo.length,
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('${pages[index]}',
                                arguments: allVideo[index]);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 210,
                                width: double.infinity,
                                color: Colors.red,
                                child: Image(
                                  image: AssetImage(allVideo[index]['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "${allVideo[index]['caption']}",
                                style: GoogleFonts.titilliumWeb(
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ))),
              ),
            ],
          )
          // body: TabBarView(children: [
          //   Container(
          //     child: ListView.builder(
          //         itemCount: allMusic.length,
          //         itemBuilder: (context, index) => ListTile(
          //               onTap: () {
          //                 Navigator.of(context)
          //                     .pushNamed('musicPage', arguments: allMusic[index]);
          //               },
          //               title: Text("${allMusic[index]['name']}"),
          //             )),
          //   ),
          //   Container(
          //     color: Colors.blue,
          //   )
          // ]),
          ),
    );
  }
}
