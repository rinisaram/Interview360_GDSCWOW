import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_interview_360_front_end/core/colors/colors.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import '../../core/image_string/image_strings.dart';

class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late MediaStream _localStream;
  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  bool _isMuted = false;
  bool _isVideoEnabled = true;

  @override
  void initState() {
    super.initState();
    initRenderer();
  }

  @override
  void dispose() {
    _localRenderer.dispose();
    _localStream.getTracks().forEach((track) {
      track.stop();
    });
    super.dispose();
  }

  Future<void> initRenderer() async {
    await _localRenderer.initialize();
    await _startCamera();
  }

  Future<void> _startCamera() async {
    final mediaConstraints = {
      'audio': true, // Change to true to enable audio
      'video': {
        'facingMode': 'user',
      }
    };

    try {
      _localStream =
          await navigator.mediaDevices.getUserMedia(mediaConstraints);
      _localRenderer.srcObject = _localStream;
    } catch (e) {
      print(e.toString());
    }
  }

  void _toggleMute() {
    final audioTrack = _localStream.getAudioTracks().first;
    setState(() {
      _isMuted = !_isMuted;
      audioTrack.enabled = !_isMuted;
    });
  }

  void _toggleVideo() {
    final videoTrack = _localStream.getVideoTracks().first;
    setState(() {
      _isVideoEnabled = !_isVideoEnabled;
      videoTrack.enabled = !_isVideoEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(10),
          width: 350,
          height: 250,
          child: RTCVideoView(
            filterQuality: FilterQuality.high,
            _localRenderer,
            objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
            mirror: true,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 90,
          height: 40,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: SystemColors.answerBoxClr,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _toggleMute,
                child: Image.asset(
                  _isMuted ? SystemImages.micoff : SystemImages.mic,
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: _toggleVideo,
                child: Image.asset(
                  _isVideoEnabled ? SystemImages.videoff : SystemImages.video,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}