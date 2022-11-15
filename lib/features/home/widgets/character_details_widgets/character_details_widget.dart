import 'package:firstflutterapp/core/utils/function_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key? key, required this.imagePath, }) : super(key: key);
  final String imagePath ;
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Stack(
      alignment: Alignment.topLeft,
      clipBehavior: Clip.none,
      children:<Widget> [
        SizedBox(
          width : size.width,
          height: size.height*0.4,
          child: FadeInImage.assetNetwork(
            alignment: Alignment.center,
            image: imagePath ?? '',
            placeholder: 'assets/marvell.png',
            fit: BoxFit.cover,
            imageErrorBuilder: (_, __, ___){
              return Image.asset(
                'assets/marvell.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),

          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getResponsiveItemSize(size.width, 20),
                vertical: getResponsiveItemSize(size.width, 40),
              ),
              child: Icon(
                Icons.arrow_back_ios,color : Colors.white,size: getResponsiveItemSize(size.width, 20),
              ),
            ),
          ),
    ],
    );
  }
}
