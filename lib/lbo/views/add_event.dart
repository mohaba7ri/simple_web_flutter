import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:simple_website/admin/controller/add_lbo_controller.dart';
import 'package:simple_website/lbo/controller/add_events_controller.dart';
import 'package:simple_website/style/app_color.dart';
import 'package:simple_website/style/fonts.dart';
import 'package:simple_website/widgets/custom_input.dart';

//ترفيهي
// معارض ومهرجانات
//رياضي
//ثقافي
//طبيعة
//ديني
//تاريخي
//تقني
//سياحي
class AddEventScreen extends GetView<AddEventController> {
  RxBool free = false.obs;
  final Rx<Uint8List?> _pickedLargeImageBytes = Rx<Uint8List?>(null);
  final Rx<Uint8List?> _pickedImage1Bytes = Rx<Uint8List?>(null);
  final Rx<Uint8List?> _pickedImage2Bytes = Rx<Uint8List?>(null);
  final Rx<Uint8List?> _pickedImage3Bytes = Rx<Uint8List?>(null);
  final Rx<DateTimeRange?> _selectedDateRange = Rx<DateTimeRange?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.primary),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Add Event", style: robotoExtraHuge),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  contentPadding: EdgeInsets.all(12.0),
                  subtitle: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomInput(
                          controller: controller.NameC,
                          label: "Name",
                          hint: "",
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          DateTimeRange? picked =
                                              await showDateRangePicker(
                                            context: context,
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                          );
                                          if (picked != null) {
                                            _selectedDateRange.value = picked;
                                          }
                                        },
                                        child: Text("Select Date Range"),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Obx(() {
                                      return Text(
                                        _selectedDateRange.value != null
                                            ? "Selected range: ${_selectedDateRange.value!.start.toString().split(' ')[0]} - ${_selectedDateRange.value!.end.toString().split(' ')[0]}"
                                            : "No date range selected",
                                        style: TextStyle(fontSize: 16),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomInput(
                                controller: controller.timeC,
                                label: "Time",
                                hint: "",
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomInput(
                                controller: controller.locationC,
                                label: "Location",
                                hint: "",
                              ),
                            ),
                            Expanded(
                              child: CustomInput(
                                controller: controller.NameC,
                                label: "Map",
                                hint: "",
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              pickFiles((bytes) {
                                _pickedLargeImageBytes.value = bytes;
                              });
                            },
                            child: Obx(() {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.primary),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                height: 300,
                                width: double.infinity,
                                child: _pickedLargeImageBytes.value != null
                                    ? Image.memory(
                                        _pickedLargeImageBytes.value!,
                                        fit: BoxFit.fill,
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.image,
                                            size: 60,
                                            color: Colors.black54,
                                          ),
                                          Text("pick_large_img".tr),
                                        ],
                                      ),
                              );
                            }),
                          ),
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        pickFiles((bytes) {
                                          _pickedImage1Bytes.value = bytes;
                                        });
                                      },
                                      child: Obx(() {
                                        return Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.primary),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          height: 200,
                                          child: _pickedImage1Bytes.value !=
                                                  null
                                              ? Image.memory(
                                                  _pickedImage1Bytes.value!,
                                                  fit: BoxFit.fill,
                                                )
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.image,
                                                      size: 60,
                                                      color: Colors.black54,
                                                    ),
                                                    Text("pick_img".tr),
                                                  ],
                                                ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        pickFiles((bytes) {
                                          _pickedImage2Bytes.value = bytes;
                                        });
                                      },
                                      child: Obx(() {
                                        return Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.primary),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          height: 200,
                                          child: _pickedImage2Bytes.value !=
                                                  null
                                              ? Image.memory(
                                                  _pickedImage2Bytes.value!,
                                                  fit: BoxFit.fill,
                                                )
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.image,
                                                      size: 60,
                                                      color: Colors.black54,
                                                    ),
                                                    Text("pick_img".tr),
                                                  ],
                                                ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        pickFiles((bytes) {
                                          _pickedImage3Bytes.value = bytes;
                                        });
                                      },
                                      child: Obx(() {
                                        return Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.primary),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          height: 200,
                                          child: _pickedImage3Bytes.value !=
                                                  null
                                              ? Image.memory(
                                                  _pickedImage3Bytes.value!,
                                                  fit: BoxFit.fill,
                                                )
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.image,
                                                      size: 60,
                                                      color: Colors.black54,
                                                    ),
                                                    Text("pick_img".tr),
                                                  ],
                                                ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                controller.addEvent();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.primarySoft,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                              ),
                              child: Text(
                                "Add",
                                style: robotoExtraHuge,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pickFiles(Function(Uint8List) onFilePicked) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        onFileLoading: (FilePickerStatus status) => print(status),
        allowedExtensions: ['png', 'jpg', 'jpeg', 'heic'],
      );
      if (result != null) {
        onFilePicked(result.files.first.bytes!);
      }
    } on PlatformException catch (e) {
      log('Unsupported operation' + e.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
