import 'package:flutter/material.dart';
import 'package:mamas_first_demo/providers/brand_provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.brandsData,
  }) : super(key: key);

  final BrandProvider brandsData;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
