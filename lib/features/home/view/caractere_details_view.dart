import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/character_details_widgets/character_details_widget.dart';

class CharacterDetailsView extends StatefulWidget {
  const CharacterDetailsView({Key? key}) : super(key: key);

  @override
  State<CharacterDetailsView> createState() => _CharacterDetailsViewState();
}

class _CharacterDetailsViewState extends State<CharacterDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CharacterDetails(imagePath: '',),
    );
  }
}
