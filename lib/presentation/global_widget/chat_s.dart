import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign/controller/main_con.dart';
import 'package:whatsapp_redesign/presentation/home/widget/list_item.dart';

Widget ChatsView(context) {
  ChatController controller = Get.put(ChatController());
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
                hintText: "Search Users",
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
                        itemCount: controller.userList.length,
                        itemBuilder: (c, i) {
                          return UserListTile(
                              controller.userList[i].name,
                              controller.userList[i].image,
                              controller.userList[i].date,
                              controller.userList[i].lastMessage);
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
