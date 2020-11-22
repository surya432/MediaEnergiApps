import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audio_cache.dart';

class HomeController extends GetxController {
  var _musicPlay = 0.obs;
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();

  get getImagesPlay => _musicPlay.value == 1
      ? "assets/Icon/button-05.png"
      : "assets/Icon/button-music.png";
  set musicPlay(value) => this._musicPlay.value = value;
  @override
  void onInit() {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache();
    super.onInit();
  }

  playLocal() async {
    audioPlayer.setVolume(1);
    _musicPlay.value =
        await audioPlayer.play("UkuleleBensound.mp3", isLocal: true);
  }

  @override
  void onClose() {
    audioCache.clear("UkuleleBensound.mp3");
    audioPlayer?.stop();
    _musicPlay.value = 0;
    super.onClose();
  }

  void playMusic() async {
    print(_musicPlay.value);
    if (_musicPlay.value == 0) {
      audioPlayer = await audioCache.loop("UkuleleBensound.mp3");
      _musicPlay.value = 1;
    } else {
      audioCache.clear("UkuleleBensound.mp3");
      audioPlayer?.stop();
      _musicPlay.value = 0;
    }
  }

  closedApp() async {
    audioCache.clear("UkuleleBensound.mp3");
    await audioPlayer?.stop();
    _musicPlay.value = 0;
    SystemNavigator.pop();
  }
}
