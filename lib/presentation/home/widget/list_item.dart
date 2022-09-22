import 'package:flutter/material.dart';

UserListTile(name, image, date, msg) {
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          maxRadius: 30,
          backgroundImage: NetworkImage(image),
        ),
        title: Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          msg,
          maxLines: 1,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
        trailing: Text(
          date,
          style: const TextStyle(),
        ),
      ),
      const Divider(
        indent: 40,
      ),
    ],
  );
}
