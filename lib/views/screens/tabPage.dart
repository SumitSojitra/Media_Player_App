import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Media Booster"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.music_note_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_stable_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
