import 'package:get/get.dart';
import 'package:simple_website/admin/views/add_lbo.dart';
import 'package:simple_website/admin/views/admin_home.dart';
import 'package:simple_website/admin/views/list_lbo.dart';
import 'package:simple_website/lbo/views/add_event.dart';
import 'package:simple_website/lbo/views/event_details.dart';
import 'package:simple_website/lbo/views/list_event.dart';
import 'package:simple_website/main.dart';
import 'package:simple_website/tourist/view_events.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    // GetPage(
    //   name: _Paths.LOGIN,
    //   page: () => LoginScreen(),
    // ),
    // GetPage(
    //   name: _Paths.SPLASHSCREEN,
    //   page: () => SplashScreen(),
    // ),
    // GetPage(
    //   name: _Paths.SIGNUPSCREEN,
    //   page: () => SignUpScreen(),
    // ),
    // GetPage(
    //   name: _Paths.HOMESCREEN,
    //   page: () => HomeScreen(),
    // ),
    GetPage(
      name: _Paths.ADMINHOMESCREEN,
      page: () => AdminHomeScreen(),
    ),
    GetPage(
      name: _Paths.ADDLBOSCREEN,
      page: () => AddLBOScreen(),
    ),
    GetPage(
      name: _Paths.LISTLBOSCREEN,
      page: () => ListLBOScreen(),
    ),
    GetPage(
      name: _Paths.ADDEVENTSSCREEN,
      page: () => AddEventScreen(),
    ),
    GetPage(
      name: _Paths.LISTEVENTSSCREEN,
      page: () => ListEventsScreen(),
    ),
    GetPage(
      name: _Paths.EVENTDETAILSSCREEN,
      page: () => EventDetailsScreen(),
    ),
    GetPage(
      name: _Paths.VIEWEVENTSSCREEN,
      page: () => ViewEventsScreen(),
    ),
    GetPage(
      name: _Paths.MAINSCREEN,
      page: () => MyHomePage(),
    ),
  ];
}
