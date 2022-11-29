import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final int page;

  const DrawerTile(
      {super.key, required this.icon, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.grey[700],
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
