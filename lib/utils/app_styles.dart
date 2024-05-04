import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/size_config.dart';

abstract class AppStyles{
  static TextStyle styleRegular16(context){
    return TextStyle(
    color:const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 16) ,
    fontWeight: FontWeight.w400,

  );
  }
  // static  TextStyle styleRegular16=TextStyle(
  //   color:const Color(0xff064061),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 16) ,
  //   fontWeight: FontWeight.w400,

  // );
  static TextStyle styleMedium16(context){
    return TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 16) ,
    fontWeight: FontWeight.w500
  );
  }
  // static  TextStyle styleMedium16=TextStyle(
  //   color: const Color(0xff064061),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 16) ,
  //   fontWeight: FontWeight.w500
  // );
 static TextStyle styleSemiBold16(context){
  return TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 16) ,
    fontWeight: FontWeight.w600
  );
 }

  // static  TextStyle styleSemiBold16=TextStyle(
  //   color: const Color(0xff064061),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 16) ,
  //   fontWeight: FontWeight.w600
  // );
  static TextStyle styleSemiBold20(context){
    return TextStyle(
    color: const Color(0xff064060),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 20) ,
    fontWeight: FontWeight.w600
  );
  }
  // static  TextStyle styleSemiBold20=TextStyle(
  //   color: const Color(0xff064060),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 20) ,
  //   fontWeight: FontWeight.w600
  // );
  static TextStyle styleRegular12(context){
    return TextStyle(
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 12) ,
    fontWeight: FontWeight.w400
  );
  }
  // static  TextStyle styleRegular12=TextStyle(
  //   color: const Color(0xffAAAAAA),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 12) ,
  //   fontWeight: FontWeight.w400
  // );
  static TextStyle styleSemiBold24(context){
    return TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 24) ,
    fontWeight: FontWeight.w600
  );
  }

  // static  TextStyle styleSemiBold24=TextStyle(
  //   color: const Color(0xff4EB7F2),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 24) ,
  //   fontWeight: FontWeight.w600
  // );
  static TextStyle styleRegular14(context){
    return TextStyle(
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 14) ,
    fontWeight: FontWeight.w400
  );
  }
  // static  TextStyle styleRegular14=TextStyle(
  //   color: const Color(0xffAAAAAA),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 14) ,
  //   fontWeight: FontWeight.w400
  // );
  static TextStyle styleSemiBold18(context){
    return TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 18) ,
    fontWeight: FontWeight.w600
  );
  }
  // static  TextStyle styleSemiBold18=TextStyle(
  //   color: const Color(0xff4EB7F2),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 18) ,
  //   fontWeight: FontWeight.w600
  // );
  static TextStyle styleBold16(context){
    return TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 16) ,
    fontWeight: FontWeight.w700
  );
  }
  // static  TextStyle styleBold16=TextStyle(
  //   color: const Color(0xff4EB7F2),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 16) ,
  //   fontWeight: FontWeight.w700
  // );
  static TextStyle styleMedium20(context){
    return TextStyle(
    color: const Color(0xffffffff),
    fontFamily: 'Montserrat',
    fontSize:getResponsiveFontSizeText(context,fontSize: 20) ,
    fontWeight: FontWeight.w500
  );
  }
  // static  TextStyle styleMedium20=TextStyle(
  //   color: const Color(0xffffffff),
  //   fontFamily: 'Montserrat',
  //   fontSize:getResponsiveFontSizeText(fontSize: 20) ,
  //   fontWeight: FontWeight.w500
  // );

}

double getResponsiveFontSizeText(BuildContext context,{required double fontSize}){
  double scaleFactor=getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;
  double lowerLimit=fontSize*0.8;
  double upperLimit=fontSize*1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width=MediaQuery.sizeOf(context).width;
  // var dispatcher=PlatformDispatcher.instance;
  // var physicalWidth=dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio=dispatcher.views.first.devicePixelRatio;
  // double width=physicalWidth/devicePixelRatio;
  if(width<SizeConfig.tablet){
    return width/550;
  }else if(width<SizeConfig.desktop){
    return width/1000;

  }else{
    return width/1920;
  }
}

