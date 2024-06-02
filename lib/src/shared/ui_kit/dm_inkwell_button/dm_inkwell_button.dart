import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DMInkwellButton extends StatelessWidget {
  const DMInkwellButton({
    super.key,
    this.title,
    this.onTap,
    this.backgroundColor,
    this.buttonPadding,
    this.borderColor,
    this.titleColor,
    this.showLoading,
    this.width,
    this.height,
    this.elevation,
    this.underline = false,
    this.borderRadius = 8,
    this.style,
    this.child,
  });

  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? titleColor;
  final String? title;
  final bool? showLoading;
  final bool? underline;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? elevation;
  final double? buttonPadding;
  final TextStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.maxFinite,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(buttonPadding ?? 0.0),
          child: showLoading ?? false
              ? Center(
                  child: SpinKitThreeBounce(
                  color: Theme.of(context).colorScheme.surface,
                  size: 30,
                ))
              : Container(
                decoration: BoxDecoration(
                  color: backgroundColor ?? Theme.of(context).colorScheme.primary,
                  border: Border.all(
                    width: 2,
                    color: borderColor ?? Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 12),
                ),
                child: Center(
                    child: FittedBox(
                      child: child ??
                          Text(
                            title ?? '',
                            textAlign: TextAlign.center,
                            style: style ??
                                Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: titleColor ??
                                          Theme.of(context).colorScheme.surface,
                                    ),
                          ),
                    ),
                  ),
              ),
        ),
      ),
    );
  }
}
