import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HyperlinkButton extends StatefulWidget {
  const HyperlinkButton({
    super.key, required this.videoUrl,
  });
  final String videoUrl;
  @override
  State<HyperlinkButton> createState() => _HyperlinkButtonState();
}

class _HyperlinkButtonState extends State<HyperlinkButton> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    // Initialize the video controller with the video URL
    _controller = VideoPlayerController.network(
        widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the video is displayed as soon as it is initialized
        setState(() {
          _isInitialized = true;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Video of Recipe',
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: Center(
        child: _isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(), // Show loading indicator while the video is initializing
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
