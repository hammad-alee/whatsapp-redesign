import 'package:flutter/services.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:whatsapp_redesign/model/user.dart';

class ChatController extends GetxController with StateMixin {
  List<User> userList = List.empty(growable: true);
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
        name: 'Alive Rodririge',
        lastMessage: 'Hi, How are you?',
        image:
            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg',
        date: 'Yesterday');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Lillian Burgess',
        lastMessage: 'I\'m waiting.',
        image:
            'https://images.pexels.com/photos/3760766/pexels-photo-3760766.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        date: 'Yesterday');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Bird Ramsey',
        lastMessage: 'Hi, Where are you.',
        image:
            'https://images.pexels.com/photos/6237921/pexels-photo-6237921.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        date: '03 Aug');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Adam Smith',
        lastMessage: 'Can i call?',
        image:
            'https://images.pexels.com/photos/12154466/pexels-photo-12154466.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        date: '03 Aug');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Marsh Mccall',
        lastMessage: 'I\'m waiting.',
        image:
            'https://images.pexels.com/photos/12137911/pexels-photo-12137911.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        date: '04 Aug');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Leonor Cross',
        lastMessage: 'Reached at home.',
        image:
            'https://images.pexels.com/photos/10806979/pexels-photo-10806979.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        date: '01 Aug');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Taiane Zatolinni',
        lastMessage: 'Free to use?',
        image:
            'https://images.pexels.com/photos/7228844/pexels-photo-7228844.png',
        date: '29 Jul');
    userList.add(u1);
    u1 = User(
        id: 1,
        name: 'Reagan Fulton',
        lastMessage: 'Yup, it’s even better than email marketing!',
        image:
            'https://images.pexels.com/photos/9567697/pexels-photo-9567697.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        date: '29 Jul');
    userList.add(u1);
    change(null, status: RxStatus.success());
    print(userList.length);
  }
}
