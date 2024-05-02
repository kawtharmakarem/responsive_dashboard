import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/drawer_item.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_assets.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
    
  });

  
   

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items=const [
    DrawerItemModel(image: AppAssets.dashboard, title: 'Dashboard'),
    DrawerItemModel(image: AppAssets.myTransaction, title: 'My Transaction'),
    DrawerItemModel(image: AppAssets.statistics, title: 'Statistics'),
    DrawerItemModel(image: AppAssets.walletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: AppAssets.investment, title: 'Investment')
  ];
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
     
     itemCount: items.length,
     itemBuilder: (context,index){
       return GestureDetector(
        onTap: (){
          if(activeIndex!=index){
          setState(() {
            activeIndex=index;
          });
          }
         
        },
         child: Padding(
           padding: const EdgeInsets.only(top: 20),
           child: DrawerItem(drawerItemModel: items[index],isActive: activeIndex==index,),
         ),
       );
    });
  }
}