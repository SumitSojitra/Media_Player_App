import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../utils/utils.dart';

class TumPremHoPage extends StatefulWidget {
  const TumPremHoPage({super.key});

  @override
  State<TumPremHoPage> createState() => _TumPremHoPageState();
}

class _TumPremHoPageState extends State<TumPremHoPage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/TumPremHo.mp4")
          ..initialize().then((value) => setState(() {}));

    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            videoPlayerController.dispose();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                // SizedBox(height: 15),
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
