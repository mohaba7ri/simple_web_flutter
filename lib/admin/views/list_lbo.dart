import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_website/admin/controller/list_lbo_controller.dart';
import 'package:simple_website/routes/app_pages.dart';
import 'package:simple_website/style/app_color.dart';

import '../../style/fonts.dart';

class ListLBOScreen extends GetView<ListLBOController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Business Owners", style: robotoMediumBold),
        iconTheme: IconThemeData(color: AppColor.primary),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
            child: ElevatedButton.icon(
              icon: Icon(Icons.add_sharp),
              onPressed: () {
                Get.toNamed(Routes.ADDLBOSCREEN);
              },
              label: Text('Add New Owner'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color
                foregroundColor:
                    AppColor.primary, // Foreground (text and icon) color
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4.0,
                    color: AppColor.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Royal Institute of Traditional Arts",
                          style: robotodarkHuge,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Wrth@gmail.com",
                          style: robotodarkHuge,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
