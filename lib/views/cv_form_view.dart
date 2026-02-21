import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/app/routes.dart';
import 'package:resume_app/widgets/custom_text_field.dart';
import 'package:resume_app/controllers/cv_controller.dart';

class cvformView extends StatelessWidget {
  cvformView({super.key});
  final CvController controller = Get.put(CvController());
  final degreeController = TextEditingController();
  final instituteController = TextEditingController();
  final yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              customTextField(label: "Name", onchange: controller.updateName),
              customTextField(label: "Email", onchange: controller.updateEmail),
              customTextField(label: "Phone", onchange: controller.updatePhone),
              customTextField(
                label: "Summary",
                onchange: controller.updateSummary,
                maxlines: 4,
              ),
              const SizedBox(height: 14),
              Text(
                "Education",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              customTextField(
                label: "Degree",
                onchange: (value) => degreeController.text = value,
              ),
              customTextField(
                label: "Institute",
                onchange: (value) => instituteController.text = value,
              ),
              customTextField(
                label: "Year",
                onchange: (value) => yearController.text = value,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.addEduaction(
                    degreeController.text,
                    instituteController.text,
                    yearController.text,
                  );
                  degreeController.clear();
                  instituteController.clear();
                  yearController.clear();
                },
                child: Text("Add Education"),
              ),
              Obx(
                  ()=>ListView.builder(
                    itemCount: controller.educationlist.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      itemBuilder:(context,index){
                        final edu=controller.educationlist[index];
                        return Card(
                          child: ListTile(
                            title: Text(edu.degree),
                            subtitle: Text("${edu.institute}-${edu.year}"),
                            trailing: IconButton(onPressed: (){
                              controller.removeEducation(index);
                            },
                                icon: Icon(Icons.delete,color: Colors.red,)),

                          ),

                        );

                      }

                  ),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.preview);
                },
                child: Text("Preview Cv"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
