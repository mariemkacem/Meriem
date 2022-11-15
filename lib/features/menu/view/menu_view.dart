import 'package:firstflutterapp/features/home/view/caractere_details_view.dart';
import 'package:firstflutterapp/features/home/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/function_utils.dart';
import '../../../core/utils/values/colors.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int _currentIndex = 0;
  Widget getWidget() {
    Widget _currentWidget =CharacterDetailsView();
    switch (_currentIndex){
      case 0 :{
        _currentWidget = HomePage() ;
      }
    }
    return _currentWidget ;
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size ;
    return Scaffold(
      backgroundColor: Colors.black,
      body: getWidget(),
      bottomNavigationBar:
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: getResponsiveItemSize(size.width,14),
        unselectedFontSize: getResponsiveItemSize(size.width,14),
        onTap: (int value) {
          setState(() {
            _currentIndex = value ;
          });

        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(Icons.favorite),
          ),

        ],
      )


    );
  }
}

