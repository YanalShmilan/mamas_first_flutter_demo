import 'package:flutter/material.dart';
import 'package:mamas_first_demo/brandsTab.dart';
import 'package:mamas_first_demo/providers/brand_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BrandProvider(),
      child: MaterialApp(
        home: DefaultTabController(
          length: 2,
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Shop",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              actions: [
                const Icon(Icons.search),
                Switch(value: false, onChanged: (value) => {})
              ],
              backgroundColor: Colors.white,
              actionsIconTheme:
                  const IconThemeData(color: Colors.black, size: 36),
              centerTitle: true,
              bottom: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "VENDORS",
                  ),
                  Tab(
                    text: "BRANDS",
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.store_outlined),
                  label: 'SHOP',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'CART',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.label_outline),
                  label: 'SALE',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'ACCOUNT',
                ),
              ],
              currentIndex: 1,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              onTap: null,
            ),
            body: const TabBarView(
              children: [
                Text("This is empty"),
                BrandsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
