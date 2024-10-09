import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FadeInText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration duration;
  final TextAlign? textAlign;
  const FadeInText({
    Key? key,
    required this.text,
    required this.style,
    this.textAlign,
    this.duration = const Duration(seconds: 1), 
  }) : super(key: key);

  @override
  _FadeInTextState createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0.5 && !_isVisible) {
      // Trigger when more than half is visible
      _controller.forward(); // Start the animation when text becomes visible
      _isVisible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.text), // Unique key to track visibility
      onVisibilityChanged: _onVisibilityChanged,
      child: FadeTransition(
        opacity: _animation,
        child: Text(
          widget.text,
          style: widget.style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
