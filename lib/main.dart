import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planet_defender_quest/planet_defender_quest.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  PlanetDefenderQuest game = PlanetDefenderQuest();
  runApp(
    GameWidget(game: kDebugMode ? PlanetDefenderQuest() : game),
  );
}
