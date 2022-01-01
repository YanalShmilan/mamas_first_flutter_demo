import 'package:flutter/material.dart';
import 'package:mamas_first_demo/components/brands_grid.dart';
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
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SizedBox(
              height: 45,
              child: TextField(
                onChanged: (query) => {brandsData.search(query)},
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search for brand',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
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
