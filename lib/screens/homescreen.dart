import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nav_rail_store/screens/favouritesscreen.dart';
import 'package:nav_rail_store/screens/feedscreen.dart';
import 'package:nav_rail_store/screens/settingsscreen.dart';
import 'package:nav_rail_store/screens/storagescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    const StorageScreen(),
    const FeedScreen(),
    const FavoritesScreen(),
    const SettingsScreen()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Site'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                  icon: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/home.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  label: const Text('Home'),
                ),
                NavigationRailDestination(
                  icon: GestureDetector(
                    onTap: () {
                      const FeedScreen();
                    },
                    child: SvgPicture.asset(
                      'assets/feed.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  label: const Text('Feed'),
                ),
                NavigationRailDestination(
                  icon: GestureDetector(
                    child: SvgPicture.asset(
                      'assets/favourite.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  label: const Text('Favourite'),
                ),
                NavigationRailDestination(
                  icon: GestureDetector(
                    child: SvgPicture.asset(
                      'assets/settings.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  label: const Text('Settings'),
                ),
              ],
              leading: const Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person),
                  )
                ],
              ),
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(color: Colors.teal),
              unselectedLabelTextStyle: const TextStyle(),
              selectedIndex: selectedIndex),
          Expanded(child: _screens[selectedIndex])
        ],
      ),
    );
  }
}
