import 'package:flutter/material.dart';
import 'package:simple_website/images.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    Images.aboutBackground,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        'حول السعودية',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    subtitle: SizedBox(height: 20,),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: ListTile(
                        title: Text(
                          "الثقافة",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            "تتميز المملكة العربية السعودية بتراث غني وتقاليد عريقة، حيث شكّلت\n مركزًا تجاريًا رئيسيًا عبر التاريخ وشهدت ولادة الدين الإسلامي. وفي السنوات \nالأخيرة، خضعت المملكة لتحول ثقافي مهم، حيث تم تطوير عادات عمرها قرون بما يتلاءم مع زمننا المعاصر."),
                      ),
                    ),
                    Image.asset(Images.cultur),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    Images.arabicBackground,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        'اللغة',
                        style: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'العربية هي اللغة الرسمية في المملكة العربية السعودية وهي اللغة الرئيسية المستخدمة في التعاملات والمعاملات العامة.\n وتُعدّ الإنجليزية لغة ثانية غير رسمية في المملكة ويتحدثّها قسم كبير من السكان. كما وتعرض جميع لوحات السير المعلومات باللغتين العربية والإنجليزية.',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  title: const Text(
                    "الآداب العامة",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: const ListTile(
                            trailing: Icon(
                              Icons.checklist_rtl_rounded,
                              size: 40,
                              color: Colors.pink,
                            ),
                            title: Text("الآداب العامة"),
                            subtitle: Text(
                                "إنّ الكلام البذيء والسلوك الصاخب والتعدّي على حدود الآخرين \nهي سلوكيات تدلّ على قلة الاحترام. ويُنصح باحترام اللياقات العامة في جميع الأوقات."),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: const ListTile(
                            trailing: Icon(
                              Icons.not_interested_sharp,
                              size: 40,
                              color: Colors.pink,
                            ),
                            title: Text("الكحول والمواد الممنوعة"),
                            subtitle: Text(
                                "إنّ بيع وشراء واستهلاك المشروبات الكحولية والمخدرات غير\n قانوني في المملكة العربية السعودية."),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, bottom: 12.0, left: 16.0, right: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      const Expanded(
                          child: ListTile(
                        title: Text(
                          "الدين",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            "تُغلق بعض المتاجر أبوابها لفترة وجيزة خلال أوقات الصلاة لإتاحة وقت للعبادة. خلال شهر رمضان المبارك، يتغير إيقاع البلاد إلى إيقاع روحاني هادئ."),
                      )),
                      Image.asset(Images.nusuk),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
