import 'package:flutter/material.dart';
import 'package:nav_rail_store/storage/localstorage.dart';
import 'package:nav_rail_store/storage/sessionstorage.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({super.key});

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade100,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                LocalStorageHelper.saveValue('isLoggedin', 'true');
              },
              child: const Text('Store to Local')),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                LocalStorageHelper.removeValue("isLoggedin");
              },
              child: const Text('Remove from Local')),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                SessionStorageHelper.saveValue('token', 'dt48');
              },
              child: const Text('Store to Session')),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                SessionStorageHelper.removeValue('token');
              },
              child: const Text('Remove from session'))
        ],
      ),
    );
  }
}
