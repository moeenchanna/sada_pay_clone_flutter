import 'package:flutter/material.dart';
import 'package:sadapay_ui/tabs/Tabs.dart';
import 'package:sadapay_ui/util/ColorResources.dart';

class MainScreen extends StatefulWidget {
  static String routeKey = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  var pages = [const HomeTab(), const PaymentTab(), const MoreTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorResources.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: ColorResources.colorPrimary,
          onTap:(index)=>{
            setState(()=> _currentIndex= index)
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment_outlined),
              label: "Payment",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
            ),
          ]),
    );
  }


}
