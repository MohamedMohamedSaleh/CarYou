import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.path, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color,
  });
  final String path;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (path.endsWith('svg')) {
      return SvgPicture.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        // ignore: deprecated_member_use
        color: color,
      );
    } else if (path.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: path,
        placeholder: (context, url) => FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Loading...',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[400],
            ),
          ),
        ),
        errorWidget: (context, url, error) => Icon(
          Icons.error_outline_rounded,
          color: Theme.of(context).primaryColor,
        ),
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (path.endsWith('.json')) {
      return Lottie.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        
      );
    } else {
      return Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
  }
}
