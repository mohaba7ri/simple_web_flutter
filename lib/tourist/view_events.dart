import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_website/images.dart';
import 'package:simple_website/routes/app_pages.dart';
import 'package:simple_website/style/fonts.dart';
import 'package:simple_website/tourist/controller/view_events_controller.dart';
import 'package:simple_website/widgets/custom_input.dart';
import 'package:simple_website/widgets/myCustomButton.dart';
import 'package:simple_website/widgets/myCustomButton2.dart';
import 'package:simple_website/widgets/myCustomButton3.dart';

// class ViewEventsScreen extends StatelessWidget {
//   final List<Map<String, String>> items = [
//     {
//       'image': Images.event,
//       'title': 'Item 1 Title',
//       'subtitle': 'Item 1 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 2 Title',
//       'subtitle': 'Item 2 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 3 Title',
//       'subtitle': 'Item 3 Subtitle',
//     },
//     {
//       'image': Images.event,
//       'title': 'Item 1 Title',
//       'subtitle': 'Item 1 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 4 Title',
//       'subtitle': 'Item 4 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 5 Title',
//       'subtitle': 'Item 5 Subtitle',
//     },
//     {
//       'image': Images.event,
//       'title': 'Item 1 Title',
//       'subtitle': 'Item 1 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 6 Title',
//       'subtitle': 'Item 6 Subtitle',
//     },
//     {
//       'image': Images.first1,
//       'title': 'Item 7 Title',
//       'subtitle': 'Item 7 Subtitle',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: List.generate(
//             (items.length / 3).ceil(),
//             (rowIndex) {
//               final startIndex = rowIndex * 3;
//               final endIndex = (rowIndex + 1) * 3;
//               final rowItems = items.sublist(
//                 startIndex,
//                 endIndex > items.length ? items.length : endIndex,
//               );
//               return Row(
//                 children: rowItems.map((item) {
//                   return Container(
//                     width: 400,
//                     margin: EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(15),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 8,
//                           offset: Offset(0, 4),
//                         ),
//                       ],
//                     ),
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Image.asset(
//                             item['image']!,
//                             height: 200,
//                             width: 400,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                           Positioned.fill(
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               gradient: LinearGradient(
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                                 colors: [
//                                   Colors.transparent,
//                                   Colors.black.withOpacity(0.7),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 40,
//                           left: 8,
//                           right: 8,
//                           child: Text(
//                             item['title']!,
//                             style: GoogleFonts.lato(
//                               fontSize: 18,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   blurRadius: 10.0,
//                                   color: Colors.black,
//                                   offset: Offset(2.0, 2.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 20,
//                           left: 8,
//                           right: 8,
//                           child: Text(
//                             item['subtitle']!,
//                             style: GoogleFonts.lato(
//                               fontSize: 14,
//                               color: Color.fromARGB(255, 187, 187, 187),
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   blurRadius: 10.0,
//                                   color: Colors.black,
//                                   offset: Offset(2.0, 2.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 8,
//                           right: 8,
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: AnimatedFloatingButton2(
//                               image: Images.staticTicket,
//                               text: 'View',
//                               initialColor: Colors.transparent,
//                               hoverColor: Colors.black,
//                               onPressed: () {
//                                 // Define your action here
//                               },
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }).toList(),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
class ViewEventsScreen extends GetView<ViewEventsController> {
  final List<Map<String, String>> items = [
    {
      'image': Images.event,
      'title': 'Item 1 Title',
      'subtitle': 'Item 1 Subtitle',
    },
    {
      'image': Images.first1,
      'title': 'Item 2 Title',
      'subtitle': 'Item 2 Subtitle',
    },
    {
      'image': Images.first1,
      'title': 'Item 3 Title',
      'subtitle': 'Item 3 Subtitle',
    },
    {
      'image': Images.event,
      'title': 'Item 1 Title',
      'subtitle': 'Item 1 Subtitle',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First Column - Scrollable and Wider
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: items.map((item) {
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            item['image']!,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.7),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 8,
                          right: 8,
                          child: Text(
                            item['title']!,
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 8,
                          right: 8,
                          child: Text(
                            item['subtitle']!,
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Color.fromARGB(255, 187, 187, 187),
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AnimatedFloatingButton2(
                              image: Images.staticTicket,
                              text: 'view'.tr,
                              initialColor: Colors.transparent,
                              hoverColor: Colors.black,
                              onPressed: () {
                                Get.toNamed(Routes.EVENTDETAILSSCREEN);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        // Second Column - Fixed Width
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white, // Set a background color if needed
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "filter".tr,
                        style: robotoHugeBlack,
                      ),
                      SizedBox(height: 16),
                      CustomInput(
                          controller: controller.searchC,
                          label: "search".tr,
                          hint: "search".tr),
                      SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'field2'.tr,
                          border: OutlineInputBorder(),
                        ),
                        items: ['option1', 'option2', 'option3']
                            .map((option) => DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option.tr),
                                ))
                            .toList(),
                        onChanged: (value) {
                          // Handle change
                        },
                      ),
                      SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Field 3',
                          border: OutlineInputBorder(),
                        ),
                        items: ['Option 1', 'Option 2', 'Option 3']
                            .map((option) => DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                ))
                            .toList(),
                        onChanged: (value) {
                          // Handle change
                        },
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {
                              // Handle checkbox change
                            },
                          ),
                          Text('view_recommendations'.tr),
                        ],
                      ),
                      SizedBox(height: 16),
                      AnimatedFloatingButton3(
                        image: Images.staticTicket,
                        text: 'view'.tr,
                        initialColor: Colors.transparent,
                        hoverColor: Colors.black,
                        onPressed: () {
                          // Define your action here
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
