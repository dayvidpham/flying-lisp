import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flame/box2d/box2d_component.dart';
import 'package:box2d_flame/box2d.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'lisp-game.dart';

class Fly extends BodyComponent {
  static const num PLAYER_RADIUS = 8.0;

  Sprite player = Sprite('player-fly.png');

  bool idle;
  bool upward;
  bool downward;

  Fly(box2d) : super(box2d) {
    _createBody(PLAYER_RADIUS, Vector2.zero());
  }

  void _createBody(double radius, Vector2 position) {
    final CircleShape shape = CircleShape();
    shape.radius = radius;

    final fixtureDef = FixtureDef();
    fixtureDef.shape = shape;
    fixtureDef.restitution = 0.0;
    fixtureDef.density = 1.0;
    fixtureDef.friction = 0.1;

    final bodyDef = BodyDef();
    bodyDef.position = position;
    bodyDef.type = BodyType.STATIC;

    body = world.createBody(bodyDef)..createFixtureFromFixtureDef(fixtureDef);
  }

  @override
  void render(Canvas c) {
    c.save();
  }

  void update(double t) {}
}
