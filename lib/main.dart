import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flame/util.dart';
import 'package:LISP/lisp-game.dart';
import 'dart:async';

void main() async {
  await setupFlame();
  var game = new LispGame();
  runApp(game.widget);
}

void setupFlame() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setLandscape();
}
