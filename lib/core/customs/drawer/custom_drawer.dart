import 'package:appstore/core/customs/drawer/components/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: const [
            DrawerTile(
              icon: Icons.home,
              text: 'Inicio',
              page: 0,
            ),
            DrawerTile(
              icon: Icons.list,
              text: 'Produtos',
              page: 1,
            ),
            DrawerTile(
              icon: Icons.playlist_add_check,
              text: 'Meus Pedidos',
              page: 2,
            ),
            DrawerTile(
              icon: Icons.location_on,
              text: 'Lojas',
              page: 3,
            ),
          ],
        ),
      ),
    );
  }
}
