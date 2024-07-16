import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'app_title': 'Flutter Web Demo',
          'home': 'Home',
          'about': 'About',
          'contact_us': 'Contact Us',
          'login': 'Login',
          'copyrights': 'CopyRights for KSA Tourism',
          'year': '2024',
          'discover': "Discover Saudi Arabia\n  Special Places!",
          'filter': 'Filter',
          'search': 'Search',
          'view': 'View',
          'view_recommendations': 'View Recommencations',
          "field2": "Field 2",
          "option1": "Option 1",
          "option2": "Option 2",
          "option3": "Option 3",
          "time": "Time",
          "contact": "Contact",
          "organizer": "Organizer",
          "location": "Location",
          "eventDescription":
              "The Royal Institute of Traditional Arts (Wrth) is participating in the Esports World Cup, an international eight-week event held from July 3 to Aug. 25 for the first time in Riyadh. Through its interactive pavilion, visitors can enjoy unique experiences related to sports, entertainment, education and culture. The pavilion presents traditional arts in pixel format — first used in electronic video games — through interactive art exhibitions and visual and educational content in Arabic and English, allowing visitors to both create their own artworks and learn more about traditional Saudi arts.",
          "price": "Price: Free",
          "getTicket": "Get Ticket",
          "comments": "Comments",
          "dateRange": "Aug 9,2024 - Oct 12,2024",
          "timeRange": "6:00 pm- 2:00 am"
        },
        'ar': {
          'app_title': 'عرض الويب فلاتر',
          'home': 'الرئيسية',
          'about': 'حول',
          'contact_us': 'اتصل بنا',
          'login': 'تسجيل الدخول',
          'copyrights': 'حقوق النشر للسياحة في السعودية',
          'year': '٢٠٢٤',
          'dicover': 'إكتشف الاماكن المميزة في السعودية!',
          'filter': 'تصفية',
          'search': 'بحث',
          'view': 'عرض',
          'view_recommendations': 'عرض الاقتراحات',
          "field2": "الحقل 2",
          "option1": "الخيار 1",
          "option2": "الخيار 2",
          "option3": "الخيار 3",
          "time": "الوقت",
          "contact": "الاتصال",
          "organizer": "المنظم",
          "location": "الموقع",
          "eventDescription":
              "يشارك المعهد الملكي للفنون التقليدية (Wrth) في كأس العالم للألعاب الإلكترونية، وهو حدث دولي يستمر لمدة ثمانية أسابيع من 3 يوليو إلى 25 أغسطس لأول مرة في الرياض. من خلال جناحه التفاعلي، يمكن للزوار الاستمتاع بتجارب فريدة تتعلق بالرياضة والترفيه والتعليم والثقافة. يقدم الجناح الفنون التقليدية بتنسيق البكسل - الذي استخدم لأول مرة في ألعاب الفيديو الإلكترونية - من خلال معارض فنية تفاعلية ومحتوى تعليمي وبصري باللغتين العربية والإنجليزية، مما يسمح للزوار بإنشاء أعمالهم الفنية الخاصة وتعلم المزيد عن الفنون السعودية التقليدية.",
          "price": "السعر: مجاني",
          "getTicket": "احصل على تذكرة",
          "comments": "التعليقات",
          "dateRange": "9 أغسطس 2024 - 12 أكتوبر 2024",
          "timeRange": "6:00 مساءً - 2:00 صباحاً"
        },
      };
}
