import 'package:get/get.dart';
import 'package:whatsapp_redesign/binding/main_bin.dart';
import 'package:whatsapp_redesign/presentation/home/main_scr.dart';

class AppRoutes {
  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const Chats(),
      bindings: [
        ChatBinding(),
      ],
    ),
  ];
}
