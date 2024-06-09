import 'dart:math';

import 'package:flutter/material.dart';
import 'package:outlook/widgets/homepage/chat_box.dart';

class ChatList extends StatefulWidget {
  final int itemCount;
  final List<Map<String, String>>? outpassData;
  const ChatList({super.key, required this.itemCount, this.outpassData});

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
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<List<String>> outPassBox = [];

  @override
  void initState() {
    super.initState();
  }

  void initOutPass() {
    if (widget.outpassData != null) {
      outPassBox.clear();
      for (Map<String, String> data in widget.outpassData!) {
        List<String> outpass = [
          'HK',
          'Hostel KCT',
          'Today',
          'Outpass Request Approved - ${data['name']} 22BCD012',
          'Dear ${data['name']} Your outing request has been approved',
        ];
        outPassBox.add(outpass);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    initOutPass();
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.itemCount,
      itemBuilder: (context, index) {
        final data = ChatList
            .chatDetails[ChatList.random.nextInt(ChatList.chatDetails.length)];
        return ChatBox(
          dpLabel: widget.outpassData == null ? data[0] : outPassBox[index][0],
          name: widget.outpassData == null ? data[1] : outPassBox[index][1],
          day: widget.outpassData == null ? data[2] : outPassBox[index][2],
          sub: widget.outpassData == null ? data[3] : outPassBox[index][3],
          sub2: widget.outpassData == null ? data[4] : outPassBox[index][4],
          outpassData:
              widget.outpassData == null ? null : widget.outpassData![index],
        );
      },
    );
  }
}
