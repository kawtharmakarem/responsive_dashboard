import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposiveapp/models/drawer_item_model.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

import 'active_drawer_item.dart';
import 'inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
final  DrawerItemModel drawerItemModel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive? ActiveDrawerItem(drawerItemModel: drawerItemModel,) :InActiveDrawerItem(drawerItemModel: drawerItemModel,);
  }
}



