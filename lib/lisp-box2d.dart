import 'package:flame/box2d/box2d_component.dart';

class LispBox2D extends Box2DComponent {
  static const double SCALE = 10;
  static const double GRAVITY = 0.0;
  static const int WORLD_POOL_SIZE = 100;
  static const int WORLD_POOL_CONTAINER_SIZE = 10;

  LispBox2D()
      : super(
            scale: SCALE,
            gravity: GRAVITY,
            worldPoolContainerSize: WORLD_POOL_CONTAINER_SIZE,
            worldPoolSize: WORLD_POOL_SIZE);

  @override
  void initializeWorld() {
    // TODO: implement initializeWorld
  }
}
