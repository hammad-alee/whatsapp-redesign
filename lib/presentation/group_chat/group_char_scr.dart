import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign/controller/group_chat_con.dart';

import '../home/widget/list_item.dart';

class GroupChat extends StatelessWidget {
  const GroupChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GroupChatController controller = Get.put(GroupChatController());
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  fillColor: Colors.green.shade50,
                  hintText: "Search Groups",
                  contentPadding: const EdgeInsets.only(left: 8),
                  suffixIcon: const Icon(Icons.search),
                  filled: true),
            ),
          ),
          Expanded(
              child: controller.obx(
                  (state) => MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          itemCount: controller.groupsList.length,
                          itemBuilder: (c, i) {
                            return UserListTile(
                                controller.groupsList[i].name,
                                controller.groupsList[i].image,
                                controller.groupsList[i].date,
                                controller.groupsList[i].lastMessage);
                          },
                        ),
                      ),
                  onLoading: const Center(
                    child: CircularProgressIndicator(),
                  ))),
        ],
      ),
    );
  }
}
