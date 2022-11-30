import 'package:appstore/features/base/controllers/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final int page;

  const DrawerTile(
      {super.key, required this.icon, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    final int currentPage = context.watch<BaseController>().page;

    return InkWell(
      onTap: () {
        context.read<BaseController>().setPage(page);
      },
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: currentPage == page ? Colors.blue : Colors.grey[700],
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: currentPage == page ? Colors.blue : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
