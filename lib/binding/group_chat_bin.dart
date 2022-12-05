import 'package:get/instance_manager.dart';
import 'package:whatsapp_redesign/controller/main_con.dart';

import '../controller/group_chat_con.dart';

class GroupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupChatController());
  }
}
