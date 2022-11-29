import 'package:appstore/core/customs/drawer/custom_drawer.dart';
import 'package:appstore/features/base/controllers/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  final _pageController = PageController();

  BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => BaseController(controller: _pageController),
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
            ),
            drawer: const CustomDrawer(),
            body: const Text('Home'),
          ),
          Scaffold(
            appBar: AppBar(
              title: const Text('Produtos'),
            ),
            drawer: const CustomDrawer(),
            body: const Text('Produtos'),
          ),
          Scaffold(
            appBar: AppBar(
              title: const Text('Pedidos'),
            ),
            drawer: const CustomDrawer(),
            body: const Text('Pedidos'),
          ),
          Scaffold(
            appBar: AppBar(
              title: const Text('Lojas'),
            ),
            drawer: const CustomDrawer(),
            body: const Text('Lojas'),
          ),
        ],
      ),
    );
  }
}
