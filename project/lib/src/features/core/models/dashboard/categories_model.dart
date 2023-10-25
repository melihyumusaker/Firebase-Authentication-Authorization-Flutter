import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.onPress, this.subHeading);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel('JS', 'Java Script', null, '10 Lessons'),
    DashboardCategoriesModel('F', 'Flutter', null, '14 Lessons'),
    DashboardCategoriesModel('H', 'HTML', null, '8 Lessons'),
    DashboardCategoriesModel('K', 'Kotlin', null, '20 Lessons'),
    DashboardCategoriesModel('P', 'Python', null, '100 Lessons'),
  ];
}
