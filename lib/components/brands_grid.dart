import 'package:flutter/material.dart';
import 'package:mamas_first_demo/components/alphabet_scroll.dart';
import 'package:mamas_first_demo/components/brand_item.dart';
import 'package:mamas_first_demo/providers/brand_provider.dart';

class BrandsGrid extends StatelessWidget {
  final BrandProvider brandsData;
  BrandsGrid({
    Key? key,
    required this.brandsData,
  }) : super(key: key);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AlphabetScrollView(
      list: brandsData.brands.map((e) => AlphaModel(e.title)).toList(),
      unselectedTextStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
      selectedTextStyle: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      itemBuilder: (_, id, title) {
        return BrandItem(
          title: brandsData.brands[id].title,
          imageUrl: brandsData.brands[id].imageUrl,
          id: brandsData.brands[id].id,
        );
      },
    );
  }
}
