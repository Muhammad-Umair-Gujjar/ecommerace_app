import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/widgets/custom_text_field.dart';

class PositionedSearchField extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final String hintText;
  final IconData prefixIcon;
  final double horizontalPadding;
  final double elevation;
  final double borderRadius;

  const PositionedSearchField({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.hintText = 'Search in Store',
    this.prefixIcon = Icons.search_rounded,
    this.horizontalPadding = 16.0,
    this.elevation = 2.0,
    this.borderRadius = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(borderRadius),
            child: CustomTextField(hintText: hintText, prefixIcon: prefixIcon),
          ),
        ),
      ),
    );
  }
}
