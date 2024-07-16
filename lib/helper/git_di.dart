import 'package:get/get.dart';
import 'package:simple_website/admin/controller/add_lbo_controller.dart';
import 'package:simple_website/admin/controller/list_lbo_controller.dart';
import 'package:simple_website/lbo/controller/add_events_controller.dart';
import 'package:simple_website/lbo/controller/event_details_controller.dart';
import 'package:simple_website/lbo/controller/list_events_controller.dart';
import 'package:simple_website/tourist/controller/view_events_controller.dart';

Future init() async {
  // final sharedPreferences = await SharedPreferences.getInstance();
  // Get.lazyPut(() => sharedPreferences, fenix: true);
  // Get.lazyPut(() => LoginController(sharedPreferences: Get.find()),
  //     fenix: true);
  Get.lazyPut(() => AddLBOController(), fenix: true);
  Get.lazyPut(() => ListLBOController(), fenix: true);
  Get.lazyPut(() => AddEventController(), fenix: true);
  Get.lazyPut(() => ListEventsController(), fenix: true);
  Get.lazyPut(() => EventDetailsController(), fenix: true);
  Get.lazyPut(() => ViewEventsController(), fenix: true);
}
