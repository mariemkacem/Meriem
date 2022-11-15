import 'package:firstflutterapp/core/utils/function_utils.dart';
import 'package:firstflutterapp/features/home/view/caractere_details_view.dart';
import 'package:firstflutterapp/features/home/widgets/character_details_widgets/character_details_widget.dart';
import 'package:firstflutterapp/features/home/widgets/home_widgets/caractere_list_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/models/character_item_model.dart';
import '../widgets/home_widgets/home_view_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CharacterItemModel> _list =[
    CharacterItemModel(
      title: 'Barbie',
    ),
    CharacterItemModel(
      title: 'Batman',
    ),
    CharacterItemModel(
      title: 'Spider Man',
    ),
    CharacterItemModel(
      title: 'The king',
    ),
    CharacterItemModel(
      title: 'Hero',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const HomeViewHeader(),
        Padding(
          padding:  EdgeInsets.only(
            top: size.height*0.05,
            right: getResponsiveItemSize(size.width, 10)
          ),
          child: Text("View all",textAlign:TextAlign.end,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getResponsiveItemSize(size.width, 17)
          ),
          ),
        ),
        Expanded(

          child: Padding(
            padding:  EdgeInsets.only(
              left: size.width*0.2,
              top: size.height*0.03,
            ),
            child: Center(
              child: ListView.builder(
                  itemCount: _list.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder:(BuildContext context, int index){
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const CharacterDetailsView();
                        }));
                      },
                      child: CaracterListItem(
                        characterItemModel: _list[index],

                      ),
                    );
                  },
              ),
            ),
          ),
        ),
      ],
    );//HomeViewHeader();
  }
}
