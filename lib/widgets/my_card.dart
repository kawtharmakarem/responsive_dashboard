import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(AppAssets.cardBackground)),
            color: AppColors.kSecondary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:const EdgeInsets.only(right: 42,left: 31,top: 16),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi',style: AppStyles.styleMedium20.copyWith(color: Colors.white),),
              trailing: SvgPicture.asset(AppAssets.gallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129',style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),),
                  Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(color: Colors.white),),
                ],
              ),
            ),
          const SizedBox(height: 26,)

          ],
        ),
      ),
    );
  }
}
