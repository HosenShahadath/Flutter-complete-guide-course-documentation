import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({super.key});

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  final AudioPlayer audioPlayer = AudioPlayer(); // audio player instance

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void playAudio() async{
    await audioPlayer.play
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
