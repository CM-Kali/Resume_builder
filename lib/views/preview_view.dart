import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:resume_app/controllers/cv_controller.dart';
import 'package:get/get.dart';

class preview extends StatelessWidget {
   preview({super.key});

  final CvController controller=Get.put(CvController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Preview CV"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
      body: Padding(
          padding: EdgeInsets.all(16),
        child:Obx(
            ()=>Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(controller.name.value,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),

                ),
                Text(controller.email.value),
                SizedBox(height: 12,),
                Text(controller.phone.value),
                SizedBox(height: 12,),

                Text(controller.summary.value,
                style: TextStyle(
                  fontSize: 12,
                ),
                ),


              ],

            )
        ) ,
          ),

    );
  }
}
