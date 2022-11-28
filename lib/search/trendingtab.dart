import 'package:flutter/material.dart';

import 'package:register/nftcards.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCards(
      imagePath: 'lib/images/angle3.jpg',
    );
    ;
  }
}
