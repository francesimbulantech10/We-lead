import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Ecommercesection extends StatefulWidget {
  const Ecommercesection({super.key});

  @override
  State<Ecommercesection> createState() => _Ecommercesection();
}

class _Ecommercesection extends State<Ecommercesection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1274) {
          return const WebView();
        } else {
          return const MobileView();
        }
      },
    );
  }
}

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;
  bool _isVideoLoading = true;
  bool _isVideoError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    _videoController = VideoPlayerController.asset('pamilyavid.mp4')
      ..initialize().then((_) {
        setState(() {
          _isVideoLoading = false;
          _isVideoError = false;
        });
        _chewieController = ChewieController(
          videoPlayerController: _videoController,
          autoPlay: true,
          looping: false,
          allowFullScreen: true,
          showControls: false, // Hides the default controls to add custom ones
        );
      }).catchError((error) {
        setState(() {
          _isVideoLoading = false;
          _isVideoError = true;
        });
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  // Calculate the new position based on where the user clicked
  void _seekToRelativePosition(Offset globalPosition, BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final double dx = box.globalToLocal(globalPosition).dx;
    final double screenWidth = box.size.width;
    final Duration videoDuration = _videoController.value.duration;

    // Calculate the percentage of the width clicked
    final double relative = max(0, min(1, dx / screenWidth));
    final Duration newPosition = videoDuration * relative;

    // Seek to the new position
    _videoController.seekTo(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          const Gap(50),
          SizedBox(
            width: size.width,
            height: 150,
            child: Image.asset(
              'ecommerce/cart.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(100),
          SizedBox(
            width: 890,
            height: 500,
            child: _isVideoLoading
                ? const Center(child: CircularProgressIndicator())
                : _isVideoError
                    ? const Center(child: Text('Error loading video'))
                    : Column(
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                GestureDetector(
                                  // Tapping anywhere on the video should pause/play it
                                  onTap: () {
                                    if (_videoController.value.isPlaying) {
                                      _videoController.pause();
                                    } else {
                                      _videoController.play();
                                    }
                                    setState(() {});
                                  },
                                  child: AspectRatio(
                                    aspectRatio:
                                        _videoController.value.aspectRatio,
                                    child: Container(
                                      color: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: VideoPlayer(_videoController),
                                      ),
                                    ),
                                  ),
                                ),
                                _customVideoControls(
                                    context), // Custom controls with clickable progress bar
                              ],
                            ),
                          ),
                        ],
                      ),
          ),
          const Gap(50),
          SizedBox(
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                const Text(
                  'CONNECTING BUSINESSES, BOOSTING PROFITS: THE B2B MARKETPLACE CHRONICLES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Gap(50),
                const Text(
                  'B2B e-COMMERCE We offer a digital marketplace where consumers and merchants can connect, buy, and sell from each other whether products or services. We offer all of these through our flagship e-Commerce platform called Pamilya.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18),
                ),
                const Gap(50),
                const Text('Please visit us at.'),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Facebook Page: ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black), // Normal text color
                      ),
                      TextSpan(
                        text: 'Pamilya.com.ph',
                        style: const TextStyle(
                            color: Colors.blue, fontSize: 18 // Link color
                            // Removed underline decoration
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url =
                                'https://www.facebook.com/pamilya.com.ph';
                            // ignore: deprecated_member_use
                            if (await canLaunch(url)) {
                              // ignore: deprecated_member_use
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Website: ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black), // Normal text color
                      ),
                      TextSpan(
                        text: 'Pamilya.com.ph',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue, // Link color
                          // Removed underline decoration
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url = 'https://pamilya.com.ph/';
                            // ignore: deprecated_member_use
                            if (await canLaunch(url)) {
                              // ignore: deprecated_member_use
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }

  // Custom controls for the video, including the clickable progress bar
  Widget _customVideoControls(BuildContext context) {
    return SizedBox(
      width: 900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            // Detect clicks on the progress bar
            onTapDown: (details) =>
                _seekToRelativePosition(details.globalPosition, context),
            child: Container(
              height: 10,
              color: Colors.transparent, // Makes the entire bar area clickable
              child: VideoProgressIndicator(
                _videoController,
                allowScrubbing: true, // Allows dragging along the progress bar
                colors: const VideoProgressColors(
                  playedColor: Color.fromARGB(255, 255, 102, 0),
                  backgroundColor: Colors.grey,
                  bufferedColor: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  _videoController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    if (_videoController.value.isPlaying) {
                      _videoController.pause();
                    } else {
                      _videoController.play();
                    }
                  });
                },
              ),
              Text(
                '${_formatDuration(_videoController.value.position)} / ${_formatDuration(_videoController.value.duration)}',
                style: const TextStyle(color: Colors.black),
              ),
              IconButton(
                icon: const Icon(Icons.fullscreen, color: Colors.black),
                onPressed: () {
                  _chewieController?.enterFullScreen();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final String minutes = twoDigits(duration.inMinutes.remainder(60));
    final String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}

//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW
//MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW MOBILE VIEW

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileView();
}

class _MobileView extends State<MobileView> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;
  bool _isVideoLoading = true;
  bool _isVideoError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    _videoController = VideoPlayerController.asset('pamilyavid.mp4')
      ..initialize().then((_) {
        setState(() {
          _isVideoLoading = false;
          _isVideoError = false;
        });
        _chewieController = ChewieController(
          videoPlayerController: _videoController,
          autoPlay: true,
          looping: false,
          allowFullScreen: true,
          showControls: false, // Hides the default controls to add custom ones
        );
      }).catchError((error) {
        setState(() {
          _isVideoLoading = false;
          _isVideoError = true;
        });
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  // Calculate the new position based on where the user clicked
  void _seekToRelativePosition(Offset globalPosition, BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final double dx = box.globalToLocal(globalPosition).dx;
    final double screenWidth = box.size.width;
    final Duration videoDuration = _videoController.value.duration;

    // Calculate the percentage of the width clicked
    final double relative = max(0, min(1, dx / screenWidth));
    final Duration newPosition = videoDuration * relative;

    // Seek to the new position
    _videoController.seekTo(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          const Gap(50),
          SizedBox(
            width: size.width,
            height: 150,
            child: Image.asset(
              'ecommerce/cart.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Gap(50),
          SizedBox(
            width: size.width * .9,
            child: _isVideoLoading
                ? const Center(child: CircularProgressIndicator())
                : _isVideoError
                    ? const Center(child: Text('Error loading video'))
                    : Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              GestureDetector(
                                // Tapping anywhere on the video should pause/play it
                                onTap: () {
                                  if (_videoController.value.isPlaying) {
                                    _videoController.pause();
                                  } else {
                                    _videoController.play();
                                  }
                                  setState(() {});
                                },
                                child: AspectRatio(
                                  aspectRatio:
                                      _videoController.value.aspectRatio,
                                  child: Container(
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: VideoPlayer(_videoController),
                                    ),
                                  ),
                                ),
                              ),
                              _customVideoControls(
                                  context), // Custom controls with clickable progress bar
                            ],
                          ),
                          const Gap(50),
                          SizedBox(
                            width: 900,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(20),
                                const Text(
                                  'CONNECTING BUSINESSES, BOOSTING PROFITS: THE B2B MARKETPLACE CHRONICLES',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const Gap(50),
                                const Text(
                                  'B2B e-COMMERCE We offer a digital marketplace where consumers and merchants can connect, buy, and sell from each other whether products or services. We offer all of these through our flagship e-Commerce platform called Pamilya.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontSize: 18),
                                ),
                                const Gap(50),
                                const Text('Please visit us at.'),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Facebook Page: ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors
                                                .black), // Normal text color
                                      ),
                                      TextSpan(
                                        text: 'Pamilya.com.ph',
                                        style: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 18 // Link color
                                            // Removed underline decoration
                                            ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            const url =
                                                'https://www.facebook.com/pamilya.com.ph';
                                            // ignore: deprecated_member_use
                                            if (await canLaunch(url)) {
                                              // ignore: deprecated_member_use
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Website: ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors
                                                .black), // Normal text color
                                      ),
                                      TextSpan(
                                        text: 'Pamilya.com.ph',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue, // Link color
                                          // Removed underline decoration
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            const url =
                                                'https://pamilya.com.ph/';
                                            // ignore: deprecated_member_use
                                            if (await canLaunch(url)) {
                                              // ignore: deprecated_member_use
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                        ],
                      ),
          ),
        ],
      ),
    );
  }

  // Custom controls for the video, including the clickable progress bar
  Widget _customVideoControls(BuildContext context) {
    return SizedBox(
      width: 900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            // Detect clicks on the progress bar
            onTapDown: (details) =>
                _seekToRelativePosition(details.globalPosition, context),
            child: Container(
              height: 10,
              color: Colors.transparent, // Makes the entire bar area clickable
              child: VideoProgressIndicator(
                _videoController,
                allowScrubbing: true, // Allows dragging along the progress bar
                colors: const VideoProgressColors(
                  playedColor: Color.fromARGB(255, 255, 102, 0),
                  backgroundColor: Colors.grey,
                  bufferedColor: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  _videoController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    if (_videoController.value.isPlaying) {
                      _videoController.pause();
                    } else {
                      _videoController.play();
                    }
                  });
                },
              ),
              Text(
                '${_formatDuration(_videoController.value.position)} / ${_formatDuration(_videoController.value.duration)}',
                style: const TextStyle(color: Colors.black),
              ),
              IconButton(
                icon: const Icon(Icons.fullscreen, color: Colors.black),
                onPressed: () {
                  _chewieController?.enterFullScreen();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final String minutes = twoDigits(duration.inMinutes.remainder(60));
    final String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
