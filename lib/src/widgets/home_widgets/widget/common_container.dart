// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todoapp/src/utilities/extension/extention.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    Key? key,
    required this.child,
    required this.height,
  }) : super(key: key);

  final Widget? child;
  final double height;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return Container(
      width: deviceSize.width,
      height: height,
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
