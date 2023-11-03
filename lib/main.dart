
import 'package:flutter/material.dart';
import 'ui/HomeScreen/HomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          //lableSmall to text bottom in NavigationBar
          labelSmall: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color:Color(0xFFFFFFBE))
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor:Color(0xFFFFA90A),
          unselectedItemColor: Color(0xFFC6C6C6),

        ),
         useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF121312),
        primary:const Color(0xFF121312),
        ),
        scaffoldBackgroundColor: const Color(0xFF121312),
      
      ),
      initialRoute: HomeScreen.routName,
   routes: {
      HomeScreen.routName:(_)=> HomeScreen(),

   },
    );
  }
}
