import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/function_utils.dart';
import '../../utils/models/character_item_model.dart';

class CaracterListItem extends StatelessWidget {
  const CaracterListItem({
    Key? key,
    this.characterItemModel
  }) : super(key: key);
  final CharacterItemModel? characterItemModel ;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: getResponsiveItemSize(size.width, 15),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          SizedBox(
            height: size.height*0.3 ,
            width: size.width*0.4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                getResponsiveItemSize(size.width, 35),
                ),
                topRight: Radius.circular(
                getResponsiveItemSize(size.width, 35),
                ),
              ),
              child:FadeInImage.assetNetwork(
                alignment: Alignment.center,
                  height: size.height*0.2,
                  width: size.width * 0.4,
                  image: characterItemModel?.imagePath ?? '',
                  placeholder: 'assets/marvel.jpeg',
                  fit: BoxFit.cover,
                  imageErrorBuilder: (_, __, ___){
                    return Image.asset(
                        'assets/marvel.jpeg',
                      fit: BoxFit.cover,
                    );
                },
              )
            ),
            ),
             Positioned(
               top: size.height*0.24,
                 child : Container(
            width: size.width*0.4,
            height: size.height*0.09,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(
                      getResponsiveItemSize(size.width, 25),
                    )
                )
            ),
                   child: Center(
                     child: Text(characterItemModel?.title??'',
                     style: TextStyle(
                       fontSize: getResponsiveItemSize(size.width, 18 ),
                       fontWeight:FontWeight.bold,

                     ),
                     ),
                   ),
          ),
             ),
        ],
      ),
    );
  }
}
