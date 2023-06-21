import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/utils/utils.dart';

class songsPage extends StatefulWidget {
  const songsPage({super.key});

  @override
  State<songsPage> createState() => _songsPageState();
}

class _songsPageState extends State<songsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0E2954),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 0,
                    )
                  ],
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://mosaic.scdn.co/640/ab67616d0000b27309426d9ae9d8d981735ebc5eab67616d0000b273095191f6b96fd9eff585befcab67616d0000b2731e40e617023911c2edde677aab67616d0000b273a75c2f26913099a420050f01")),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff0E2954),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff0E2954),
                      blurRadius: 100,
                      spreadRadius: -530,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BollyWood Songs",
                              style: GoogleFonts.titilliumWeb(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Divider(thickness: 2, color: Colors.white),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: ListView.builder(
                          itemCount: allMusic.length,
                          itemBuilder: (context, index) => ListTile(
                            onTap: () {
                              Navigator.of(context).pushNamed('musicPage',
                                  arguments: allMusic[index]);
                            },
                            title: Text(
                              "${allMusic[index]['name']}",
                              style: GoogleFonts.titilliumWeb(
                                  // fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.play_arrow,
                              size: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
