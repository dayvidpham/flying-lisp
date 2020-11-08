import 'dart:ui';
import 'package:flame/box2d/box2d_component.dart';
import 'package:flame/box2d/box2d_game.dart';
import 'package:flame/flame.dart';
import 'background.dart';

class LispGame extends Box2DGame {
  Size screenSize;
  Background background;
  Box2DComponent physicsComponents;

  LispGame(Box2DComponent box) : super(box) {
    initialize();
  }

  void initialize() async {
    this.resize(await Flame.util.initialDimensions());
    this.background = new Background(this);
  }

  void render(Canvas canvas) {
    background.render(canvas);
    super.render(canvas);
  }

  void update(double t) {
    // TODO: implement update
    super.update(t);
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }
}
