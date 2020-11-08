import 'dart:ui';
import 'package:flame/box2d/box2d_component.dart';
import 'package:flame/box2d/box2d_game.dart';
import 'package:flame/flame.dart';
import 'package:lisp/asteroid.dart';
import 'package:lisp/fly.dart';
import 'background.dart';

class LispGame extends Box2DGame {
  Size screenSize;
  Background background;
  final Box2DComponent box;

  LispGame(this.box) : super(box) {
    initialize();
  }

  void initialize() async {
    this.resize(await Flame.util.initialDimensions());
    this.background = new Background(this);
    this.add(new AsteroidComponent(box));
    this.add(new FlyComponent(box));
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
