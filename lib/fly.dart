import 'dart:ui';
import 'lisp-game.dart';
import 'package:box2d_flame/box2d.dart';
import 'package:flame/keyboard.dart';

class Fly {
  final LispGame game;

  Body body;
  CircleShape shape;
  Paint paint;
  Vector2 acceleration = Vector2.zero();

  Fly(this.game, Vector2 position) {
    shape = CircleShape();
    shape.p.setFrom(Vector2.zero());
    shape.radius = .1;
  }
}
