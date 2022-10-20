import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

class TraverIcons {
  static const rootAssetPath = 'assets/icons';

  static _VectorTraverIcons vector = _VectorTraverIcons();
}

class _VectorTraverIcons {
  Widget instagram(
    final VectorTraverIconStyle style, {
    final Color color = TraverColors.white,
    final double size = 24.0,
  }) =>
      _getIcon(
        assetFileName: 'instagram',
        style: style,
        color: color,
        size: size,
      );

  Widget facebook(
    final VectorTraverIconStyle style, {
    final Color color = TraverColors.white,
    final double size = 24.0,
  }) =>
      _getIcon(
        assetFileName: 'facebook',
        style: style,
        color: color,
        size: size,
      );

  Widget google(
    final VectorTraverIconStyle style, {
    final Color color = TraverColors.white,
    final double size = 24.0,
  }) =>
      _getIcon(
        assetFileName: 'google',
        style: style,
        color: color,
        size: size,
      );

  Widget _getIcon({
    required final String assetFileName,
    required final VectorTraverIconStyle style,
    required final Color color,
    required final double size,
  }) {
    final String styleDir =
        style == VectorTraverIconStyle.bold ? 'bold' : 'linear';
    final String fullAssetPath =
        '${TraverIcons.rootAssetPath}/$styleDir/$assetFileName.svg';
    try {
      return SvgPicture.asset(
        fullAssetPath,
        color: color,
        height: size,
        width: size,
      );
    } catch (_) {
      // In case such bold or linear icon doesn't exist
      return SizedBox(
        height: size,
        width: size,
        child: Placeholder(color: color),
      );
    }
  }
}

enum VectorTraverIconStyle {
  linear,
  bold,
}
