import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.logo,width: 100,height: 20.1,),
        IconButton(onPressed: (){
          Get.to(const SearchView(),transition: Transition.cupertino);
        }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 25,)),
      ],
    );
  }
}