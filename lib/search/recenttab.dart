import 'package:flutter/material.dart';
import 'package:register/nftcards.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCards(
      imagePath: 'lib/images/alien1.jpg',
    );
  }
}
