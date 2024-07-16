import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListLBOController extends GetxController {
  TextEditingController phoneC = TextEditingController();
  TextEditingController NameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController confirmPassC = TextEditingController();

  var isLoading = false.obs;

  Future<void> addLBO() async {}
}
