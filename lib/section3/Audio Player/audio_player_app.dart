import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerApp extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();

  // Plays an audio file.
  void playAudio() async {
    await audioPlayer.play(AssetSource('audio/sound.mp3'));
  }

  // Stops the audio playback.
  void stopAudio() async {
    await audioPlayer.stop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Audio Player Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: playAudio, child: const Text('Play Audio')),
            ElevatedButton(
                onPressed: stopAudio, child: const Text('Stop Audio')),
          ],
        ),
      ),
    );
  }
}
