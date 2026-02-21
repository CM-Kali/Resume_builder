import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/app/routes.dart';
import 'package:resume_app/widgets/custom_text_field.dart';
import 'package:resume_app/controllers/cv_controller.dart';
class cvformView extends StatelessWidget {
   cvformView({super.key});
  final CvController controller=Get.put(CvController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("CV Information"),
        backgroundColor: Colors.blue,
        centerTitle: true,

      ),
      body: Padding(
          padding: EdgeInsetsGeometry.all(16),
              child: SingleChildScrollView(
          child: Column(
            children: [
              customTextField(
              label: "Name",
                onchange: controller.updateName,
              ),
              customTextField(label: "Email",
                  onchange: controller.updateEmail,
              ),
              customTextField(label: "Phone",
                  onchange: controller.updatePhone,
              ),
              customTextField(label: "Summary",
                  onchange: controller.updateSummary,
                maxlines: 4,
              ),
              const SizedBox(height: 24,),
              ElevatedButton(onPressed: (){
                Get.toNamed(AppRoutes.preview);
              }, child: Text("Preview Cv")),
            ],
          ),
      ),



      ),
    );
  }
}
