// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:masari_salik_app/routes/app_pages.dart';
// import 'package:masari_salik_app/style/fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../helper/alertExitApp.dart';
// import '../style/app_color.dart';

// class AdminDrawer extends StatelessWidget {
//   const AdminDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: FutureBuilder<SharedPreferences>(
//         future: SharedPreferences.getInstance(),
//         builder: (context, snapshot) {
//           final sharedPreferences = snapshot.data;
//           final username = sharedPreferences?.getString('name') ?? '';
//           final phone = sharedPreferences?.getString('phone') ?? '';

//           return ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 currentAccountPictureSize: const Size.square(10.0),
//                 accountName: Text(
//                   username,
//                   style: robotoHugeWhite,
//                 ),
//                 accountEmail: Text(
//                   phone,
//                   style: robotoHugeWhite,
//                 ),
//                 decoration: BoxDecoration(
//                   color: AppColor.primary,
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.edit_document),
//                 title: const Text(
//                   'Edit Profile',
//                 ),
//                 onTap: () {
//                   Get.toNamed(Routes.EDITADMINPROFILESCREEN);
//                 },
//               ),
//               ExpansionTile(
//                 leading: Icon(Icons.local_hospital),
//                 title: Text('Hospitals'),
//                 children: <Widget>[
//                   // Submenu items
//                   ListTile(
//                     title: Text('View'),
//                     onTap: () {
//                       Get.toNamed(Routes.LISTHOSPITALSSCREEN);
//                     },
//                   ),
//                   ListTile(
//                     title: Text('Add'),
//                     onTap: () {
//                       Get.toNamed(Routes.ADDHOSPITALSCREEN);
//                     },
//                   ),
//                 ],
//               ),
//                ExpansionTile(
//                 leading: Icon(Icons.medical_information),
//                 title: Text('Clinics'),
//                 children: <Widget>[
//                   // Submenu items
//                   ListTile(
//                     title: Text('View'),
//                     onTap: () {
//                       Get.toNamed(Routes.LISTCLINCSSCREEN);
//                     },
//                   ),
//                   ListTile(
//                     title: Text('Add'),
//                     onTap: () {
//                       Get.toNamed(Routes.ADDCLINICSCREEN);
//                     },
//                   ),
//                 ],
//               ),
//               ExpansionTile(
//                 leading: Icon(Icons.supervised_user_circle_rounded),
//                 title: Text('Admins'),
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('View'),
//                     onTap: () {
//                       Get.toNamed(Routes.LISTADMINSSCREEN);
//                     },
//                   ),
//                   ListTile(
//                     title: Text('Add'),
//                     onTap: () {
//                       Get.toNamed(Routes.ADDADMINSCREEN);
//                     },
//                   ),
//                 ],
//               ),
//               ListTile(
//                 leading: const Icon(Icons.logout_outlined),
//                 title: const Text('Logout'),
//                 onTap: () {
//                   alertExitApp();
//                 },
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
