import 'package:flutter/material.dart';
import 'package:outlook/widgets/common/get_dp.dart';
import 'package:outlook/widgets/homepage/chat_list.dart';
import 'package:outlook/widgets/homepage/other_email.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    bool doubleTapped = false;
    bool activate = false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        toolbarHeight: 118,
        leadingWidth: 350,
        leading: Column(
          children: [
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  onDoubleTap: () {
                    doubleTapped = true;
                    Future.delayed(const Duration(seconds: 1)).then((_) {
                      doubleTapped = false;
                    });
                  },
                  onLongPressStart: (details) {
                    if (doubleTapped) {
                      activate = true;
                    }
                    print(activate);
                    activate = false;
                  },
                  onLongPressUp: () {
                    activate = false;
                  },
                  child: const GetDp(radius: 18, label: 'D'),
                ),
                const SizedBox(width: 25),
                const Text(
                  'Inbox',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const SizedBox(width: 20),
                SizedBox(
                  width: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 65,
                        child: Container(
                          alignment: Alignment.center,
                          width: 88,
                          height: 36,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(20, 20, 20, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Other',
                              style: TextStyle(
                                color: Color.fromRGBO(223, 223, 223, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 88,
                        height: 36,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(64, 64, 64, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          'Focused',
                          style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          Column(
            children: [
              const SizedBox(height: 6),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 2),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 1),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 18, right: 4),
                width: 65,
                height: 36,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(64, 64, 64, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    color: Color.fromRGBO(223, 223, 223, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OtherEmail(),
            Container(
              width: double.infinity,
              height: 0.5,
              color: const Color.fromRGBO(33, 33, 33, 1),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 12),
              child: Text(
                'Last week',
                style: TextStyle(color: Color.fromRGBO(137, 137, 137, 1)),
              ),
            ),
            const ChatList(itemCount: 3),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 12),
              child: Text(
                'Last month',
                style: TextStyle(color: Color.fromRGBO(137, 137, 137, 1)),
              ),
            ),
            const ChatList(itemCount: 14),
          ],
        ),
      ),
    );
  }
}
