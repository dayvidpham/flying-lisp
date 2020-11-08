import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flame/util.dart';
import 'package:flame/flame.dart';
import 'lisp-game.dart';

void main() {
  var game = new LispGame();
  runApp(game.widget);
  setupFlame();
}

void setupFlame() {
  Util flameUtil = Util();
  flameUtil.fullScreen();
  flameUtil.setLandscape();

  Flame.images.load('space-bg.png');
}
