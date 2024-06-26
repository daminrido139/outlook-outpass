import 'package:flutter/material.dart';
import 'package:outlook/pages/approve_page.dart';
import 'package:outlook/widgets/common/get_dp.dart';

class ChatBox extends StatelessWidget {
  final String dpLabel;
  final String name;
  final String day;
  final String sub;
  final String sub2;
  final Map<String, String>? outpassData;
  const ChatBox({
    super.key,
    required this.dpLabel,
    required this.name,
    required this.day,
    required this.sub,
    required this.sub2,
    this.outpassData,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (outpassData == null) {
          return;
        }
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ApprovePage(
                      username: outpassData!['name']!,
                      rollnumber: outpassData!['rollno']!,
                      outDate: outpassData!['outdate']!,
                      outTime: outpassData!['outtime']!,
                      ReturnDate: outpassData!['returndate']!,
                      ReturnTime: outpassData!['returntime']!,
                      email: outpassData!['email']!,
                      purcpose_of_outing: outpassData!['pot']!,
                    )));
      },
      tileColor: Colors.black,
      minTileHeight: 90,
      leading: GetDp(radius: 21, label: dpLabel),
      title: Row(
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            name,
            style: const TextStyle(
              letterSpacing: -0.5,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color.fromRGBO(137, 137, 137, 1),
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            day,
            style: const TextStyle(
              letterSpacing: -0.5,
              fontSize: 13,
              color: Color.fromRGBO(137, 137, 137, 1),
            ),
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            sub,
            style: const TextStyle(
              letterSpacing: -0.5,
              fontSize: 14,
              color: Color.fromRGBO(137, 137, 137, 1),
            ),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            sub2,
            style: const TextStyle(
              letterSpacing: -0.5,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(137, 137, 137, 1),
            ),
          ),
        ],
      ),
    );
  }
}
