library proste_shadow_clip;

import 'package:flutter/material.dart';

/// 绘制子组件和阴影组件
class ProsteShadowClip extends StatelessWidget {
  final Key? key;

  /// 需要绘制的阴影数组
  final List<Shadow> shadow;

  /// 子组件和阴影的裁剪路径
  final CustomClipper<Path> clipper;
  final Widget child;

  /// 是否重新绘制widget在widget有变动时
  final bool repaint;

  ProsteShadowClip({
    required this.shadow,
    required this.clipper,
    required this.child,
    this.key,
    this.repaint = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      key: key,
      painter: _ProsteShadowClipPainter(
        clipper: this.clipper,
        shadow: this.shadow,
        repaint: repaint,
      ),
      child: ClipPath(child: child, clipper: clipper),
    );
  }
}

/// 绘制阴影组件
class _ProsteShadowClipPainter extends CustomPainter {
  final List<Shadow> shadow;
  final CustomClipper<Path> clipper;
  final bool repaint;

  _ProsteShadowClipPainter({
    required this.shadow,
    required this.clipper,
    required this.repaint,
  });

  @override
  void paint(Canvas canvas, Size size) {
    shadow.forEach((element) {
      var paint = element.toPaint();
      var clipPath = clipper.getClip(size).shift(element.offset);
      canvas.drawPath(clipPath, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => repaint;
}
