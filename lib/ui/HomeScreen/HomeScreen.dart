import 'package:flutter/material.dart';
import '../BrowseTap/BrowseTap.dart';
import '../HomeTap/HomeTap.dart';
import '../SearchTap/SearchTap.dart';
import '../WatchlistTap/WatchlistTap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedItem,
              onTap: (index) {
                setState(() {
                  selectedItem = index;
                });
              },
              items: [
               
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon:const Icon(Icons.home),
                    label: "home",),
                BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).primaryColor,
                  icon: const Icon(Icons.search),
                  label: "search",),
                
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon: const Icon(Icons.view_agenda),
                    label:"brows"),
                    BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).primaryColor,
                      icon: const Icon(Icons.list_alt),label:"wachlist"),
              ]),
     body: Taps[selectedItem],
    );
  }

  List<Widget> Taps = [
    const HomeTap(),
    const SearchTap(),
    const BrowseTap(),
    const WarchlistTap(),
  ];
}
