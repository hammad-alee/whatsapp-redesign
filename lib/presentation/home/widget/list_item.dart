import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

UserListTile(name, image, date, msg) {
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22,
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(60), // Image radius
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          msg,
          maxLines: 1,
          style: const TextStyle(overflow: TextOverflow.ellipsis, fontSize: 12),
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
