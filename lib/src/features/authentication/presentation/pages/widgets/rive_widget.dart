
import 'package:daastane_ma/src/shared/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveWidget extends StatelessWidget {
  const RiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: MediaQuery.sizeOf(context).width * 0.8,
      child: const RiveAnimation.asset('assets/rive/spaceman.riv'),
    );
  }
}
