import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoplayerCard extends StatelessWidget {
  final String myVideoId;
  const VideoplayerCard({
    Key? key,
    required this.myVideoId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: myVideoId,
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
              hideControls: false,
            ),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          liveUIColor: Colors.amber,
        ),
      );
}
