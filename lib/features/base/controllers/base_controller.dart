import 'package:flutter/material.dart';

class BaseController {
  final PageController controller;

  BaseController({required this.controller});

  int page = 0;

  void setPage(int value) {
    if (page == value) return;
    page = value;
    controller.jumpToPage(value);
  }
}
