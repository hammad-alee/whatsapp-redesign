import 'package:flutter/services.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:whatsapp_redesign/model/user.dart';

class GroupChatController extends GetxController with StateMixin {
  List<User> groupsList = List.empty(growable: true);
  List<bool> selectedMenu = [true, false, false, false].obs;
  var selectedIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.loading());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [
      SystemUiOverlay.bottom,
    ]);
    User u1;
    u1 = User(
        id: 1,
        name: 'Flutter Community',
        lastMessage: 'Stephine, Hi, new version of plugin available.',
        image:
        'https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',
        date: 'Now');
    groupsList.add(u1);
    u1 = User(
        id: 1,
        name: 'Weekend',
        lastMessage: 'Sofia: 🤷🏽‍♀️🙅🏽‍♀️',
        image:
            'https://cdn-icons-png.flaticon.com/512/166/166258.png',
        date: 'Yesterday');
    groupsList.add(u1);
    u1 = User(
        id: 1,
        name: 'Study Material',
        lastMessage: 'Ali: Waiting for today lec.',
        image:
            'https://cdn-icons-png.flaticon.com/512/1081/1081040.png',
        date: '02 Dec');
    groupsList.add(u1);
    u1 = User(
        id: 1,
        name: 'Jokes',
        lastMessage: 'Khan: What do you call an alligator detective? An investi-gator. If you thought this was funny, you’ll love these other hilarious.',
        image:
            'https://cdn-icons-png.flaticon.com/512/185/185034.png',
        date: '30 Nov');
    groupsList.add(u1);
    change(null, status: RxStatus.success());

  }
}
