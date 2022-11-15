import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/function_utils.dart';
import '../../../../../core/utils/values/colors.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Stack(
      alignment: Alignment.bottomRight,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
            width: size.width,
            height: size.height * 0.4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(getResponsiveItemSize(size.width, 100)),
              ),
              child: Image.asset(
                'assets/marvell.png',
                fit: BoxFit.cover,
              ),
            )),
        Positioned(
          bottom:getResponsiveItemSize(size.width, -25),
          child:Container(
            width:size.width * 0.5 ,
            height:getResponsiveItemSize(size.width, 50) ,
            decoration: BoxDecoration(
                color : primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                  getResponsiveItemSize(size.width, 35),
                ),
                  bottomLeft: Radius.circular(
                    getResponsiveItemSize(size.width, 35),
                  ),
              ),
            ),
            child: Center(
              child: Text('Marvel app',style: TextStyle(
                color: Colors.white,
                fontSize: getResponsiveItemSize(size.width, 15,),
                fontWeight: FontWeight.bold,
              ),),
          )
          )
        )
      ],
    );
  }
}
