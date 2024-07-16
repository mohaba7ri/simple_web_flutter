import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:simple_website/images.dart';
import 'package:simple_website/style/app_color.dart';
import 'package:simple_website/style/fonts.dart';

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to Masari Salik",
          style: robotoMediumBold,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_2),
            onPressed: () {
              // Get.toNamed(Routes.EDITPROFILESCREEN);
            },
          )
        ],
        iconTheme: IconThemeData(color: AppColor.primary),
      ),
      // drawer: const AdminDrawer(),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 700) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: _buildHospitalsRow()),
                      Expanded(child: _buildClinicsRow()),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: _buildAdminsRow()),
                      Expanded(child: _buildUsersRow()),
                    ],
                  ),
                  _buildTodayOperationsRow(),
                ],
              );
            } else {
              return Column(
                children: [
                  _buildHospitalsRow(),
                  _buildClinicsRow(),
                  _buildAdminsRow(),
                  _buildUsersRow(),
                  _buildTodayOperationsRow(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildHospitalsRow() {
    return _buildRow("Hospitals", Icons.festival_rounded, () async {
      int hospitalCount = 45;
      return hospitalCount;
    });
  }

  Widget _buildClinicsRow() {
    return _buildRow("Clinics", Icons.supervised_user_circle_sharp, () async {
      int hospitalCount = 14;
      return hospitalCount;
    });
  }

  Widget _buildAdminsRow() {
    return _buildRow("Admins", Icons.supervised_user_circle_sharp, () async {
      int adminCount = 12;
      return adminCount;
    });
  }

  Widget _buildUsersRow() {
    return _buildRow("Users", Icons.supervised_user_circle_sharp, () async {
      int userCount = 200;
      return userCount;
    });
  }

  Widget _buildTodayOperationsRow() {
    return _buildRow("Today's Operations", Icons.done_outline_rounded,
        () async {
      int todayOperationsCount = 87;
      return todayOperationsCount;
    });
  }

  Widget _buildRow(
      String title, IconData icon, Future<int> Function() getCountFunction) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: FutureBuilder<int>(
        future: getCountFunction(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Display loading indicator while data is being fetched
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          final int documentCount = snapshot.data ?? 0;
          return Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 4.0,
                  color: AppColor.primarySoft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      leading: Icon(
                        icon,
                        size: 46,
                        color: AppColor.primary,
                      ),
                      title: Text(
                        title,
                        style: robotoMediumBold,
                      ),
                      subtitle: Text(
                        documentCount.toString(),
                        style: robotoExtraHuge,
                      ),
                      trailing: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.manage_search_sharp),
                        label: Text("view".tr),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
