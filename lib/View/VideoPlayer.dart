import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  String videoUrl = "https://video.xx.fbcdn.net/v/t39.24130-2/10000000_216719379719948_674003801327134195_n.mp4?_nc_cat=107&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_oc=AQnALLOUcTTj5d3elvAYsS_BbolVgC6xSyPbXbqNt87eoTvGUfsPtKKgFLa965W2NWc&_nc_ht=video.xx&oh=30c9c4a9554744720123e58dfdff569e&oe=5E802E4E";
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;
  double _aspectRatio = 16 / 9;
  @override
  initState() {
    super.initState();
    print(videoUrl);
    _videoPlayerController = VideoPlayerController.network(videoUrl);
    _chewieController = ChewieController(
      fullScreenByDefault: true,
      allowedScreenSleep: false,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      videoPlayerController: _videoPlayerController,
      aspectRatio: _aspectRatio,
      autoInitialize: true,
      autoPlay: true,
      showControls: true,
    );
    _chewieController.addListener(() {
      if (_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 73, 76, 1),
      body: SafeArea(
        child: Container(
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }

  
}