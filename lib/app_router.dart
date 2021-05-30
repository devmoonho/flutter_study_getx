import 'package:flutter_study_getx/page/first_page.dart';
import 'package:flutter_study_getx/page/home_page.dart';
import 'package:flutter_study_getx/page/second_page.dart';
import 'package:get/get.dart';

const String rootPage = '/';
const String firstPage = '/first';
const String secondPage = '/second';

List<GetPage> appRouter = [
  GetPage(name: rootPage, page: () => HomePage()),
  GetPage(name: firstPage, page: () => FirstPage()),
  GetPage(name: secondPage, page: () => SecondPage()),
];
