import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign/controller/main_con.dart';
import 'package:whatsapp_redesign/presentation/group_chat/group_char_scr.dart';
import 'package:whatsapp_redesign/presentation/home/widget/list_item.dart';
import 'package:whatsapp_redesign/presentation/global_widget/chat_s.dart';
import 'package:whatsapp_redesign/presentation/global_widget/left_button.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController controller = Get.put(ChatController());
    return Scaffold(
      floatingActionButton:
           Obx(() => FloatingActionButton(
             onPressed: () {},
             backgroundColor: const Color(0xff25D366),
             elevation: 10,
             child:  Icon(
               controller.selectedIndex.value == 2 ? Icons.add_a_photo :
               Icons.add,
               size: 30,
               color: Colors.white,
             ),
           )),
      body: Row(
        children: [
          Container(
              width: 40,
              height: MediaQuery.of(context).size.height,
              color: const Color(0xff25D366),
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          controller.selectedIndex.value = 0;
                          for (int i = 0;
                              i < controller.selectedMenu.length;
                              i++) {
                            if (i.isEqual(controller.selectedIndex.value)) {
                              controller.selectedMenu[i] = true;
                            } else {
                              controller.selectedMenu[i] = false;
                            }
                          }
                        },
                        child: MenuButton(
                            isSelected: controller.selectedMenu[0],
                            text: 'Chats')),
                    GestureDetector(
                      onTap: () {
                        controller.selectedIndex.value = 1;
                        for (int i = 0;
                            i < controller.selectedMenu.length;
                            i++) {
                          if (i.isEqual(controller.selectedIndex.value)) {
                            controller.selectedMenu[i] = true;
                          } else {
                            controller.selectedMenu[i] = false;
                          }
                        }
                      },
                      child: MenuButton(
                          isSelected: controller.selectedMenu[1],
                          text: 'Group Chats'),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedIndex.value = 2;
                        for (int i = 0;
                            i < controller.selectedMenu.length;
                            i++) {
                          if (i.isEqual(controller.selectedIndex.value)) {
                            controller.selectedMenu[i] = true;
                          } else {
                            controller.selectedMenu[i] = false;
                          }
                        }
                      },
                      child: MenuButton(
                          isSelected: controller.selectedMenu[2],
                          text: 'Status'),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.selectedIndex.value = 3;
                        for (int i = 0;
                            i < controller.selectedMenu.length;
                            i++) {
                          if (i.isEqual(controller.selectedIndex.value)) {
                            controller.selectedMenu[i] = true;
                          } else {
                            controller.selectedMenu[i] = false;
                          }
                        }
                      },
                      child: MenuButton(
                          isSelected: controller.selectedMenu[3],
                          text: 'Calls'),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Obx(() => Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 38),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.whatsapp,
                                  color: Color(0xff25D366),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Whatsapp',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff25D366)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(41.0),
                                child: Image.network(
                                  'https://d2kf8ptlxcina8.cloudfront.net/YH5TFCE1QY-preview.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (controller.selectedIndex.value == 0) ...[
                      ChatsView(context),
                    ]
                    else if(controller.selectedIndex.value == 1)...[
                      GroupChat(),
                    ]
                  ],
                )),
          )
        ],
      ),
    );
  }
}
