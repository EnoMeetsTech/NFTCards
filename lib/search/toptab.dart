import 'package:flutter/material.dart';
import 'package:register/nftcards.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCards(
      imagePath: 'lib/images/angle1.jpeg',
    );
    ;
  }
}
