import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import '../../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/RamSiyaRamSiya.mp4")
          ..initialize().then((value) => setState(() {}));

    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0E2954),
        title: Text(
          "Media Booster",
          style: GoogleFonts.titilliumWeb(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            videoPlayerController.dispose();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Color(0xff0E2954),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                videoPlayerController.play();
              },
              icon: Icon(Icons.play_arrow)),
          IconButton(
              onPressed: () {
                videoPlayerController.pause();
              },
              icon: Icon(Icons.pause)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Chewie(
                    controller: chewieController,
                  ),
                ),
                SizedBox(height: 15),
                Divider(thickness: 2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data['caption'],
                    style: GoogleFonts.titilliumWeb(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                Divider(thickness: 2),
              ],
            ),
          ),
          Expanded(
            flex: 2,
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}
