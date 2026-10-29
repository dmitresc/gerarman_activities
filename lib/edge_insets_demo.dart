import 'package:flutter/material.dart';

/// Reusable DRY Tile Widget
class InsetDemoTile extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color textColor;
  final bool isFullWidth;

  const InsetDemoTile({
    super.key,
    required this.text,
    required this.margin,
    this.padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    required this.color,
    this.textColor = Colors.white,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      margin: margin,
      padding: padding,
      color: color,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    if (isFullWidth) {
      return SizedBox(
        width: double.infinity,
        child: content,
      );
    }

    return UnconstrainedBox(
      child: content,
    );
  }
}