import 'package:flutter/cupertino.dart';
import 'package:resposiveapp/utils/app_styles.dart';
import 'package:resposiveapp/widgets/cards_pageview.dart';
import 'package:resposiveapp/widgets/dots_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex=0;
  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() { 
      currentPageIndex=pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 420,child: Text('MyCard',style: AppStyles.styleSemiBold20,),),
        const SizedBox(height: 10,),
        MyCardsPageView(pageController: pageController,),
        const SizedBox(height: 10,),
        DotsIndicator(currentPageIndex: currentPageIndex,)
      ],
    );
  }
}