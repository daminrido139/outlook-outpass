import 'dart:math';

import 'package:flutter/material.dart';
import 'package:outlook/widgets/homepage/chat_box.dart';

class ChatList extends StatelessWidget {
  final int itemCount;
  const ChatList({super.key, required this.itemCount});

  static List<List<String>> chatDetails = [
    [
      'BA',
      'BOOBAL A in Teams',
      'Wed',
      'BOOBAL mentioned A23-24-MENS HOSTEL in the',
      'CAUTION: This email has originated from outside of the or',
    ],
    [
      'DS',
      'DINESH S R',
      'Mon',
      'ACADEMIC FEE INTIMATION 2024-25 HAS BEEN ATTACH',
      'Dear Students, Hope you all doing good! Please',
    ],
    [
      'IM',
      'IEEE Membership Team',
      'Sun',
      'Unlock Your Potential',
      'CAUTION: This email has originated from outside of the or',
    ],
    [
      'GM',
      'GRAND MASTER 2024',
      'Thu',
      'Unlock Your Potential',
      'CAUTION: This email has originated from outside of the or',
    ],
  ];

  static Random random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final data = chatDetails[random.nextInt(chatDetails.length)];
        return ChatBox(
          dpLabel: data[0],
          name: data[1],
          day: data[2],
          sub: data[3],
          sub2: data[4],
        );
      },
    );
  }
}
