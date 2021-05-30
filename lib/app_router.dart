import 'package:flutter_study_getx/page/home_page.dart';
import 'package:flutter_study_getx/page/router/first_page.dart';
import 'package:flutter_study_getx/page/router/next_page.dart';
import 'package:flutter_study_getx/page/router/second_page.dart';
import 'package:flutter_study_getx/page/router/user_page.dart';
import 'package:flutter_study_getx/page/state/reactive_page.dart';
import 'package:flutter_study_getx/page/state/state_page.dart';
import 'package:get/get.dart';

const String rootPage = '/';
const String firstPage = '/first';
const String secondPage = '/second';
const String nextPage = '/next';
const String userPage = '/user';
const String statePage = '/state';
const String reactivePage = '/reactive';

List<GetPage> appRouter = [
  GetPage(name: rootPage, page: () => HomePage(), transition: Transition.leftToRightWithFade),
  GetPage(name: firstPage, page: () => FirstPage(), transition: Transition.leftToRightWithFade),
  GetPage(name: secondPage, page: () => SecondPage(), transition: Transition.leftToRightWithFade),
  GetPage(name: nextPage, page: () => NextPage(), transition: Transition.leftToRightWithFade),
  GetPage(name: '$userPage/:uid', page: () => UserPage(), transition: Transition.leftToRightWithFade),
  GetPage(name: statePage, page: () => StatePage(), transition: Transition.leftToRightWithFade),
  GetPage(name: reactivePage, page: () => ReactivePage(), transition: Transition.leftToRightWithFade),
];
