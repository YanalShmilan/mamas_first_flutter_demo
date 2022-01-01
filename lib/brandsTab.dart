import 'package:flutter/material.dart';
import 'package:mamas_first_demo/components/brands_grid.dart';
import 'package:mamas_first_demo/components/search_bar.dart';
import 'package:mamas_first_demo/providers/brand_provider.dart';
import 'package:provider/provider.dart';

class BrandsTab extends StatelessWidget {
  const BrandsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brandsData = Provider.of<BrandProvider>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchBar(brandsData: brandsData),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: BrandsGrid(brandsData: brandsData),
          )
        ],
      ),
    );
  }
}
