import 'package:flutter/material.dart';
import 'package:media_booster/utils/utils.dart';

class videoPage extends StatefulWidget {
  const videoPage({super.key});

  @override
  State<videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<videoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: ListView.builder(
          itemCount: allVideo.length,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('${pages[index]}', arguments: allVideo[index]);
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
    );
  }
}
