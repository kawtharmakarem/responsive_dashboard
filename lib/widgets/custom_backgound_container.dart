import 'package:flutter/material.dart';

class CustomBackgorundContainer extends StatelessWidget {
  const CustomBackgorundContainer({
    super.key,required this.child, this.padding
  });
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: child
    );
  }
}