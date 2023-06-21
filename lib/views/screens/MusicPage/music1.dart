import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class music1Page extends StatefulWidget {
  const music1Page({super.key});

  @override
  State<music1Page> createState() => _music1PageState();
}

class _music1PageState extends State<music1Page>
    with SingleTickerProviderStateMixin {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  void playAudio(String n) {
    assetsAudioPlayer.open(
      Audio(n),
    );
  }

  double slider = 0;
  bool playSong = true;

  void play() {}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // playAudio("");
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0E2954),
        title: Text("Music"),
        leading: IconButton(
          onPressed: () {
            assetsAudioPlayer.dispose();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Color(0xff0E2954),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     assetsAudioPlayer.play();
      //   },
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(data['image'])),
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                data['name'],
                style: GoogleFonts.titilliumWeb(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              // Spacer(),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share),
                  Icon(Icons.menu),
                  Icon(Icons.heart_broken),
                  Icon(Icons.download_rounded),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StreamBuilder(
                    stream: assetsAudioPlayer.currentPosition,
                    builder: (context, AsyncSnapshot snapshot) {
                      Duration duration = snapshot.data;
                      return Text("${duration.toString().split(".")[0]}");
                    },
                  ),
                  // StreamBuilder(
                  //   stream: assetsAudioPlayer.currentPosition,
                  //   builder: (context, AsyncSnapshot snapshot) {
                  //     Duration duration = snapshot.data;
                  //     return Text("${duration.toString().split(".")[0]}");
                  //   },
                  // ),
                ],
              ),
              Slider(
                  value: slider,
                  onChanged: (val) {
                    setState(() {
                      slider = val;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.repeat,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        assetsAudioPlayer.open(Audio(data['music']));
                      },
                      icon: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 30,
                      )),
                  Container(
                    height: 60,
                    alignment: Alignment.center,
                    width: 60,
                    child: IconButton(
                        onPressed: () {
                          assetsAudioPlayer.playOrPause();
                          setState(() {
                            playSong = !playSong;
                          });
                        },
                        icon: (playSong)
                            ? Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 36,
                              )
                            : Icon(
                                Icons.pause,
                                color: Colors.white,
                                size: 36,
                              )),
                    decoration: BoxDecoration(
                        color: Colors.purple, shape: BoxShape.circle),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        assetsAudioPlayer.currentLoopMode;
                      },
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
