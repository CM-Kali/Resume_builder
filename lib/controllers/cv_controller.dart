import 'package:get/get.dart';
import 'package:resume_app/models/education_model.dart';

class CvController extends GetxController{
  final name=''.obs;
  final email=''.obs;
  final phone=''.obs;
  final summary=''.obs;
  final RxList<EducationModel> educationlist=<EducationModel>[].obs;

  void updateName(String value)=>name.value=value;
  void updateEmail(String value)=>email.value=value;
  void updatePhone(String value)=>phone.value=value;
  void updateSummary(String value)=>summary.value=value;
  void addEduaction(String degree,String institute,String year){
    educationlist.add(
      EducationModel(degree: degree, institute: institute, year: year),

    );

  }
  void removeEducation(int index){
    educationlist.removeAt(index);
  }
}