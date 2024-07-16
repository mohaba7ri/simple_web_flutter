
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEventController extends GetxController {
  TextEditingController placeC = TextEditingController();
  TextEditingController NameC = TextEditingController();
  TextEditingController locationC = TextEditingController();
  TextEditingController dateC = TextEditingController();
  TextEditingController timeC = TextEditingController();

  var isLoading = false.obs;

  Future<void> addEvent() async {
  }
}
