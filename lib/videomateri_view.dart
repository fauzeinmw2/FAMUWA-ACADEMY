import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoMateri extends StatefulWidget{

  late String urlMateri;
  late String judulMateri;
  late String mentor;

  VideoMateri({
    required this.urlMateri,
    required this.judulMateri,
    required this.mentor
  });

  @override
  State<VideoMateri> createState() => _VideoMateriState();
}

class _VideoMateriState extends State<VideoMateri> {

  late YoutubePlayerController controller;

  @override
  void initState(){
    super.initState();

    // const url = 'https://www.youtube.com/watch?v=GQyWIur03aw&t=40s';

    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.urlMateri)!,
        flags: const YoutubePlayerFlags(
            mute: false,
            loop: false,
            autoPlay: false
        )
    );
  }

  @override
  void deactivate(){
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    builder: (context, player) => Scaffold(
        appBar: AppBar(title: Text(widget.judulMateri),),
        body: ListView(
          children: [
            player,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    widget.judulMateri,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    widget.mentor,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        )
    ),
    player: YoutubePlayer(
        controller: controller
    ),
  );
}