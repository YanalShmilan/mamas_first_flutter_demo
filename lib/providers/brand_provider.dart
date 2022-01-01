import 'package:flutter/material.dart';
import 'package:mamas_first_demo/dummy_data.dart';
import 'package:mamas_first_demo/models/brand.dart';

class BrandProvider with ChangeNotifier {
  List<Brand> _brands = DUMMY_BRANDS;
  List<Brand> _searchResults = DUMMY_BRANDS;

  List<Brand> get brands {
    List<Brand> sortedItems = _searchResults.toList();
    sortedItems.sort((a, b) => a.title.compareTo(b.title));

    return sortedItems;
  }

  search(String query) {
    _searchResults = _brands
        .where(
            (brand) => brand.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }
}
