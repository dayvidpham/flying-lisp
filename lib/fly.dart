import 'dart:ui';
import 'package:flame/box2d/box2d_component.dart';

import 'package:box2d_flame/box2d.dart' as Box2D;
import 'package:flame/box2d/box2d_component.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class FlyComponent extends BodyComponent {
  Sprite defaultSprite;

  FlyComponent(Box2DComponent box) : super(box) {
    _loadImage();
    _createBody();
  }

  void _loadImage() {
    this.defaultSprite = new Sprite('fly.png');
  }

  void _createBody() {
    var bodyDef = Box2D.BodyDef();
    bodyDef.type = Box2D.BodyType.KINEMATIC;
    bodyDef.position =
        Box2D.Vector2(box.dimensions.width / 2, box.dimensions.height / 2);
    bodyDef.angle = 0;

    this.body = box.world.createBody(bodyDef);
  }

  @override
  void render(Canvas canvas) {
    this.defaultSprite.render(canvas);
    super.render(canvas);
  }
}
