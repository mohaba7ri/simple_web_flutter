import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_website/images.dart';
import 'package:simple_website/lbo/controller/event_details_controller.dart';
import 'package:simple_website/style/fonts.dart';
import 'package:simple_website/widgets/comment.dart';
import 'package:simple_website/widgets/imagesSlider.dart';
import 'package:simple_website/widgets/myCustomButton.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust width as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CircleAvatar(
          //   backgroundImage: NetworkImage(comment.avatarUrl),
          //   radius: 30, // Adjust radius as needed
          // ),
          Text(
            comment.name,
          ),
          SizedBox(height: 4.0),
          //  Text("comment.content"),
        ],
      ),
    );
  }
}

class EventDetailsScreen extends GetView<EventDetailsController> {
  EventDetailsScreen({super.key});

  final List<Comment> comments = [
    Comment(
      avatarUrl: 'https://www.example.com/avatar1.png',
      name: 'John Doe',
      content: 'This is a comment from John.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),

    Comment(
      avatarUrl: 'https://www.example.com/avatar2.png',
      name: 'Jane Smith',
      content: 'This is a comment from Jane.',
    ),
    // Add more comments here
  ];
  void _toggleLanguage() {
    var locale = Get.locale;
    if (locale == Locale('en')) {
      Get.updateLocale(Locale('ar'));
    } else {
      Get.updateLocale(Locale('en'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.black,
iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Royal Institute of Traditional Arts (Wrth)", style: robotoHugeWhite,),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: _toggleLanguage,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                // Layout for larger screens
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ImageSlider(
                              images: [
                                Images.second2,
                                Images.third3,
                                Images.forth4,
                                Images.fifth5,
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 400,
                              margin: EdgeInsets.all(
                                  20), // Adding margin for spacing
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // Set a background color if needed
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.2), // Shadow color
                                    spreadRadius: 5, // Spread radius
                                    blurRadius: 7, // Blur radius
                                    offset: Offset(0, 3), // Shadow position
                                  ),
                                ],
                              ),
                              child: Material(
                                color: Colors
                                    .transparent, // Ensure the Material is transparent
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.access_time_outlined,
                                              color: Colors.black,
                                              size: 32,
                                            ),
                                            title: Text(
                                              "time".tr,
                                              style: robotoHugeBlack,
                                            ),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "dateRange".tr,
                                                  style: robotoBold,
                                                ),
                                                Text(
                                                  "timeRange".tr,
                                                  style: robotoBold,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ListTile(
                                            leading: Icon(
                                              Icons
                                                  .connect_without_contact_outlined,
                                              color: Colors.black,
                                              size: 32,
                                            ),
                                            title: Text(
                                              "contact".tr,
                                              style: robotoHugeBlack,
                                            ),
                                            subtitle: Text("123456789"),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.account_tree_sharp,
                                        color: Colors.black,
                                        size: 32,
                                      ),
                                      title: Text(
                                        "organizer".tr,
                                        style: robotoHugeBlack,
                                      ),
                                      subtitle: Text(
                                        "Royal Institute of Traditional Arts (Wrth)"
                                            .tr,
                                        style: robotoBold,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.location_pin,
                                        color: Colors.black,
                                        size: 32,
                                      ),
                                      title: Text(
                                        "location".tr,
                                        style: robotoHugeBlack,
                                      ),
                                      subtitle: Text(
                                        "Boulevard Riyadh City".tr,
                                        style: robotoBold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        "eventDescription".tr,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "price".tr,
                                            style: robotoBold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: AnimatedFloatingButton(
                                            image: Images.staticTicket,
                                            text: 'getTicket'.tr,
                                            initialColor: Colors.black,
                                            hoverColor: Colors.white,
                                            onPressed: () {
                                              // Define your action here
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "comments".tr + "(12)",
                              style: robotoHugeBlack,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150, // Adjust height as needed
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    12,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, left: 8.0),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            right:
                                                10), // Space between comments
                                        padding: EdgeInsets.all(
                                            10), // Padding inside the container
                                        width: 400, // Adjust width as needed
                                        decoration: BoxDecoration(
                                          color: Colors.grey[
                                              200], // Background color for the floating container
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.1), // Shadow color
                                              spreadRadius: 3, // Spread radius
                                              blurRadius: 5, // Blur radius
                                              offset: Offset(
                                                  0, 2), // Shadow position
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("Name $index"),
                                          subtitle: Text("Comment $index"),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("(4/5) "),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                // Layout for smaller screens
                return Column(
                  children: [
                    Image.asset(Images.arabicBackground),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageSlider(
                        images: [
                          Images.first,
                          Images.second,
                          Images.third,
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.all(20), // Adding margin for spacing
                        decoration: BoxDecoration(
                          color:
                              Colors.white, // Set a background color if needed
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors
                              .transparent, // Ensure the Material is transparent
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                title: Text(
                                  "time".tr,
                                  style: robotoHugeBlack,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Aug 9,2024 - Oct 12,2024".tr,
                                      style: robotoBold,
                                    ),
                                    Text(
                                      "6:00 pm- 2:00 am".tr,
                                      style: robotoBold,
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.connect_without_contact_outlined,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                title: Text(
                                  "contact".tr,
                                  style: robotoHugeBlack,
                                ),
                                subtitle: Text("123456789".tr),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.account_tree_sharp,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                title: Text(
                                  "Organizer".tr,
                                  style: robotoHugeBlack,
                                ),
                                subtitle: Text(
                                  "Royal Institute of Traditional Arts (Wrth)"
                                      .tr,
                                  style: robotoBold,
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.location_pin,
                                  color: Colors.black,
                                  size: 32,
                                ),
                                title: Text(
                                  "Location".tr,
                                  style: robotoHugeBlack,
                                ),
                                subtitle: Text(
                                  "Boulevard Riyadh City".tr,
                                  style: robotoBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
