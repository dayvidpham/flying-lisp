import 'dart:ui';
import 'package:box2d_flame/box2d.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/flame.dart';
import 'package:lisp/background.dart';

class LispGame extends Game {
  Size screenSize;
  Background background;

  static const int WORLD_POOL_SIZE = 100;
  static const int WORLD_POOL_CONTAINER_SIZE = 10;

  World world;

  final Vector2 _gravity = Vector2.zero();

  LispGame() {
    world = new World.withPool(
        _gravity, DefaultWorldPool(WORLD_POOL_SIZE, WORLD_POOL_CONTAINER_SIZE));
    initialize();
  }

  void initialize() async {
    this.resize(await Flame.util.initialDimensions());
    this.background = new Background(this);
  }

  void render(Canvas canvas) {
    background.render(canvas);
  }

  void update(double t) {
    // TODO: implement update
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }
}
