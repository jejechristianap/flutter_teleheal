import 'package:flutter/material.dart';
import 'package:flutter_teleheal/config/styles/app_colors.dart';
import 'package:flutter_teleheal/presentation/pages/main/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 10,
        selectedFontSize: 12,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication_liquid), label: 'RS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_services_outlined), label: 'Klinik'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
