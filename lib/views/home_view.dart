import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/app/routes.dart';
import 'package:resume_app/controllers/cv_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final CvController controller=Get.put(CvController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CV Builder"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Get.toNamed(AppRoutes.cvform);
            },
            child: Text("Create CV")),
      ),
    );
  }
}
