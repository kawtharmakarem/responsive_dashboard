import 'package:flutter/cupertino.dart';
import 'package:resposiveapp/widgets/custom_dots_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right:6),
        child: CustomDotIndicator(isActive: index==currentPageIndex),
      )),
    );
  }
}