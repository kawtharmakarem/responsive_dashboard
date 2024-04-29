import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposiveapp/models/drawer_item_model.dart';
import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/widgets/inactive_drawer_item.dart';
import 'package:resposiveapp/widgets/user_info_listtile.dart';

import 'drawer_item_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const UserInfoListTile('Lekan Okeowo', 'demo@gmail.com')),
          SliverToBoxAdapter(child: SizedBox(height: 8,),),
           DrawerItemListView(),
   
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(child: const SizedBox(),),
              InActiveDrawerItem(drawerItemModel: DrawerItemModel(image: AppAssets.setting, title: 'Settings')),
             InActiveDrawerItem(drawerItemModel: DrawerItemModel(image: AppAssets.logout, title: 'Logout')),
             const SizedBox(height: 48,)
            ],),
          )

           
        
        ],
      ),
    );
  }
}

