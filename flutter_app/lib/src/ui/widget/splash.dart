import 'package:app_boot/screen/launch.dart';
import 'package:cat/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AppSplashFragment extends StatefulWidget {
  const AppSplashFragment({
    Key? key,
    required this.animatingNotifier,
  }) : super(key: key);

  final SplashAnimatingNotifier animatingNotifier;

  @override
  State<AppSplashFragment> createState() => _AppSplashFragmentState();
}

class _AppSplashFragmentState extends State<AppSplashFragment> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    _controller = VideoPlayerController.asset(
      Assets.anim.eyeMp4,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );
    await _controller.initialize();
    setState(() {});
    await _controller.play();
    await Future.delayed(_controller.value.duration);
    widget.animatingNotifier.onCompleted();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 250,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : null,
        ),
      ),
    );
  }
}
