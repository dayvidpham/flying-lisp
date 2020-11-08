import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/flame.dart';
import 'background.dart';

class LispGame extends Game {
  Size screenSize;
  Background background;
  final double scale = 10;

  LispGame() {
    initialize();
  }

  void initialize() async {
    this.resize(await Flame.util.initialDimensions());
    this.background = new Background(this);
  }

  void render(Canvas canvas) {
    background.render(canvas);
    // Save the canvas and resize/scale it based on screenSize
    canvas.save();
    canvas.scale(screenSize.width / scale);
    canvas.restore();
  }

  void update(double t) {
    // TODO: implement update
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }
}
