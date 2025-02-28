import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String icon;
  final double size;
  final Color? color;
  final List<BoxShadow>? shadows;

  const SvgIcon({
    super.key,
    required this.icon,
    this.size = 10,
    this.color,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: shadows,
      ),
      child: SizedBox(
        height: size,
        width: size,
        child: SvgPicture.asset(
          icon,
          width: size,
          height: size,
          colorFilter: color == null
              ? null
              : ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
        ),
      ),
    );
  }
}
