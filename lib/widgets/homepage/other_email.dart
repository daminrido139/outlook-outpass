import 'package:flutter/material.dart';

class OtherEmail extends StatelessWidget {
  const OtherEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      tileColor: Colors.black,
      minTileHeight: 70,
      leading: const CircleAvatar(
        backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        radius: 21,
        child: Icon(
          Icons.email_outlined,
          color: Color.fromRGBO(114, 114, 114, 1),
        ),
      ),
      title: const Text(
        'Other emails',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      subtitle: const Text(
        overflow: TextOverflow.ellipsis,
        'IEEE eNotice, IEEE Membership, BOOBAL A in Teams',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(1, 134, 239, 1),
        width: 20,
        height: 16,
        child: const Text(
          '11',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
