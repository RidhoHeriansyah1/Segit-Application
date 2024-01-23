import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _bottomAppBarItem(
              context,
              icon: Icons.home,
              page: 0,
              label: "home"
            ),
            _bottomAppBarItem(
              context,
              icon: Icons.home,
              page: 0,
              label: "Ronda"
            ),
            _bottomAppBarItem(
              context,
              icon: Icons.home,
              page: 0,
              label: "Alarm"
            ),
            _bottomAppBarItem(
              context,
              icon: Icons.home,
              page: 0,
              label: "Setting"
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
  {required icon, required page, required label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
        ),
        Text(
          label,
        )
      ],
    );
  }
}