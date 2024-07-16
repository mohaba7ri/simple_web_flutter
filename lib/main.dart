import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_website/about.dart';
import 'package:simple_website/admin/views/admin_home.dart';
import 'package:simple_website/home.dart';
import 'package:flutter/material.dart';
import 'package:simple_website/locals/transelationService.dart';
import 'package:simple_website/tourist/view_events.dart';
import 'helper/git_di.dart' as di;

import 'routes/app_pages.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   runApp(MyApp());
//   await di.init();
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Masari Salik',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       initialRoute: Routes.MAINSCREEN,
//       getPages: AppPages.routes,
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Masari Salik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.MAINSCREEN,
      getPages: AppPages.routes,
      translations: TranslationService(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _currentPage = 'Home';

//   void _navigateTo(String page) {
//     setState(() {
//       _currentPage = page;
//     });
//   }

//   Widget _getPageContent() {
//     switch (_currentPage) {
//       case 'Home':
//         return HomeScreen();
//       case 'About':
//         return AboutScreen();
//       case 'Contact Us':
//         return ViewEventsScreen();
//       case 'Login':
//         return Text('Login Page');
//       default:
//         return Text('Home Page');
//     }
//   }

//   Widget _buildNavButton(String text, String page) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: TextButton(
//         onPressed: () => _navigateTo(page),
//         child: Text(
//           text,
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(kToolbarHeight),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(
//                   0.15), // Adjust the opacity for more glassy effect
//             ),
//             child: ClipRRect(
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(
//                     sigmaX: 20.0, sigmaY: 20.0), // Increase the blur intensity
//                 child: AppBar(
//                   backgroundColor: Colors.white.withOpacity(
//                       0.1), // Adjust the opacity for more glassy effect
//                   elevation: 0,
//                   title: Text('Flutter Web Demo'),
//                   actions: <Widget>[
//                     _buildNavButton('Home', 'Home'),
//                     _buildNavButton('About', 'About'),
//                     _buildNavButton('Contact Us', 'Contact Us'),
//                     _buildNavButton('Login', 'Login'),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body: Center(
//           child: _getPageContent(),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: Colors.black,
//           height: 35.0,
//           child: Container(
//             decoration: BoxDecoration(),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "CopyRights for KSA Tourism",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "2024",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentPage = 'Home';

  void _navigateTo(String page) {
    setState(() {
      _currentPage = page;
    });
  }

  Widget _getPageContent() {
    switch (_currentPage) {
      case 'Home':
        return HomeScreen();
      case 'About':
        return AboutScreen();
      case 'Contact Us':
        return ViewEventsScreen();
      case 'Login':
        return Text('Login Page');
      default:
        return Text('Home Page');
    }
  }

  void _toggleLanguage() {
    var locale = Get.locale;
    if (locale == Locale('en')) {
      Get.updateLocale(Locale('ar'));
    } else {
      Get.updateLocale(Locale('en'));
    }
  }

  Widget _buildNavButton(String text, String page) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: () => _navigateTo(page),
        child: Text(
          text.tr,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                  0.15), // Adjust the opacity for more glassy effect
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 20.0, sigmaY: 20.0), // Increase the blur intensity
                child: AppBar(
                  backgroundColor: Colors.white.withOpacity(
                      0.1), // Adjust the opacity for more glassy effect
                  elevation: 0,
                  title: Text('app_title'.tr),
                  actions: <Widget>[
                    _buildNavButton('home', 'Home'),
                    _buildNavButton('about', 'About'),
                    _buildNavButton('contact_us', 'Contact Us'),
                    _buildNavButton('login', 'Login'),
                    IconButton(
                      icon: Icon(Icons.language),
                      onPressed: _toggleLanguage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: _getPageContent(),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          height: 35.0,
          child: Container(
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'copyrights'.tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'year'.tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
