import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nav_rail_store/screens/favouritesscreen.dart';
import 'package:nav_rail_store/screens/feedscreen.dart';
import 'package:nav_rail_store/screens/settingsscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
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
                  _selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedScreen()),
                      );
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoritesScreen()),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/favourite.svg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  label: const Text('Favourites'),
                ),
                NavigationRailDestination(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsScreen()),
                      );
                    },
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
              selectedIndex: _selectedIndex),
          // Expanded(child: _screens[_selectedIndex])
        ],
      ),
    );
  }
}
