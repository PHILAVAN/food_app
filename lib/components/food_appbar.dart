import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FoodAppBar extends StatelessWidget {
  const FoodAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/images/head.jpg", 
        fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16,),          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("assets/icons/back.svg"),             
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            "assets/icons/share.svg",
          color: Colors.black,
          ),
        ),    
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/search.svg",
            color: Colors.black,
            ),
          ),
        ),    
      ],
    );
  }
}