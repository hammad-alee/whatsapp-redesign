import 'package:get/instance_manager.dart';
import 'package:whatsapp_redesign/controller/main_con.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ChatController());
  }
}
