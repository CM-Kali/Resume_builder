
import 'package:get/get.dart';
import 'package:resume_app/app/routes.dart';
import 'package:resume_app/views/home_view.dart';
import 'package:resume_app/views/cv_form_view.dart';

class AppPages{
  static final pages=[
    GetPage(
      name:AppRoutes.home,
      page:()=>HomeView(),
    ),
    GetPage(
  name: AppRoutes.cvform,
  page: ()=>cvformView()),

  ];
}