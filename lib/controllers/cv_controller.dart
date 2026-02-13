import 'package:get/get.dart';

class CvController extends GetxController{
  final name=''.obs;
  final email=''.obs;
  final phone=''.obs;
  final summary=''.obs;

  void updateName(String value)=>name.value=value;
  void updateEmail(String value)=>email.value=value;
  void updatePhone(String value)=>phone.value=value;
  void updateSummary(String value)=>summary.value=value;
}