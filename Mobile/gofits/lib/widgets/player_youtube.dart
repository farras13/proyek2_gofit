import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayersDetail extends StatefulWidget {
  final String videoController;
  final int startAt;
  final int endAt;
  const YoutubePlayersDetail({
    Key key,
    this.videoController,
    this.startAt,
    this.endAt,
  }) : super(key: key);
  @override
  _YoutubePlayersDetailState createState() => _YoutubePlayersDetailState();
}

class _YoutubePlayersDetailState extends State<YoutubePlayersDetail> {
  YoutubePlayerController controller;
  PlayerState playerState;
  YoutubeMetaData videoMetaData;
  bool _isPlayerReady = false;
  bool data = false;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoController),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
        startAt: widget.startAt,
        endAt: widget.endAt,
      ),
    )..addListener(listener);
    videoMetaData = const YoutubeMetaData();
    playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !controller.value.isFullScreen) {
      setState(() {
        playerState = controller.value.playerState;
        videoMetaData = controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<bool> _onPopPressed() async {
    if (!data == controller.value.isFullScreen) {
      controller.toggleFullScreenMode();
    } else {
      setState(() {
        data = !data;
      });
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onPopPressed,
      child: Stack(
        children: <Widget>[
          YoutubePlayer(
            controller: controller,
          ),
        ],
      ),
    );
  }
}

class YoutubePlayers extends StatefulWidget {
  final String videoController;
  const YoutubePlayers({
    Key key,
    this.videoController,
  }) : super(key: key);
  @override
  _YoutubePlayersState createState() => _YoutubePlayersState();
}

class _YoutubePlayersState extends State<YoutubePlayers> {
  YoutubePlayerController controller;
  PlayerState playerState;
  YoutubeMetaData videoMetaData;
  bool _isPlayerReady = false;
  bool data = false;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoController),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    )..addListener(listener);
    videoMetaData = const YoutubeMetaData();
    playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !controller.value.isFullScreen) {
      setState(() {
        playerState = controller.value.playerState;
        videoMetaData = controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<bool> _onPopPressed() async {
    if (!data == controller.value.isFullScreen) {
      controller.toggleFullScreenMode();
    } else {
      setState(() {
        data = !data;
      });
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onPopPressed,
      child: Stack(
        children: <Widget>[
          YoutubePlayer(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
