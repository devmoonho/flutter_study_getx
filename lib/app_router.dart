import 'package:flutter_study_getx/page/binding/binding_page.dart';
import 'package:flutter_study_getx/page/dependency/dependency_injection.dart';
import 'package:flutter_study_getx/page/home_page.dart';
import 'package:flutter_study_getx/page/router/first_page.dart';
import 'package:flutter_study_getx/page/router/next_page.dart';
import 'package:flutter_study_getx/page/router/second_page.dart';
import 'package:flutter_study_getx/page/router/user_page.dart';
import 'package:flutter_study_getx/page/state/reactive_page.dart';
import 'package:flutter_study_getx/page/state/state_page.dart';
import 'package:get/get.dart';

import 'binder/binding_page_binder.dart';

const String rootPage = '/';
const String firstPage = '/first';
const String secondPage = '/second';
const String nextPage = '/next';
const String userPage = '/user';
const String statePage = '/state';
const String reactivePage = '/reactive';
const String dependencyInjectionPage = '/dependencyInjection';
const String bindingPage = '/binding';

List<GetPage> appRouter = [
  GetPage(name: rootPage, page: () => HomePage()),
  GetPage(name: firstPage, page: () => FirstPage()),
  GetPage(name: secondPage, page: () => SecondPage()),
  GetPage(name: nextPage, page: () => NextPage()),
  GetPage(name: '$userPage/:uid', page: () => UserPage()),
  GetPage(name: statePage, page: () => StatePage()),
  GetPage(name: reactivePage, page: () => ReactivePage()),
  GetPage(name: dependencyInjectionPage, page: () => DependencyInjectionPage()),
  GetPage(
    name: bindingPage,
    page: () => BindingPage(),
    binding: BindingPageBinder(),
  ),
];
