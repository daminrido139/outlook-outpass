// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

String formatDateTime(DateTime dateTime) {
  // Array of day names
  const List<String> days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  // Array of month names
  const List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  // Get the day name
  String dayName = days[dateTime.weekday % 7];

  // Get the date
  int day = dateTime.day;

  // Get the month name
  String monthName = months[dateTime.month - 1];

  // Get the hour and minute
  int hour = dateTime.hour;
  int minute = dateTime.minute;

  // Determine AM/PM
  String period = hour >= 12 ? 'PM' : 'AM';

  // Convert hour from 24-hour to 12-hour format
  hour = hour % 12;
  hour = hour == 0 ? 12 : hour; // Adjust hour if it is 0

  // Format minute to always have two digits
  String minuteStr = minute < 10 ? '0$minute' : '$minute';

  // Combine all parts into the desired format
  return '$dayName, $day $monthName, $hour:$minuteStr $period';
}

class ApprovePage extends StatefulWidget {
  const ApprovePage({
    super.key,
    required this.username,
    required this.rollnumber,
    required this.outDate,
    required this.outTime,
    required this.ReturnDate,
    required this.ReturnTime,
    required this.email,
    required this.purcpose_of_outing,
  });
  final String username;
  final String rollnumber;
  final String outDate;
  final String outTime;
  final String ReturnDate;
  final String ReturnTime;
  final String email;
  final String purcpose_of_outing;

  @override
  State<ApprovePage> createState() => _ApprovePageState();
}

class _ApprovePageState extends State<ApprovePage> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          actions: const [
            Icon(Icons.delete),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.archive_outlined),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.more_vert_outlined),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Center(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text("Outing Request Approved -",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.85),
                                        fontSize: 16)),
                                Text(widget.username,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.85),
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              widget.rollnumber,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),

              ///dummy
              select == false ? notclicked() : clicked_container(),
              //email
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  //1
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Dear  ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(225, 225, 225, 1)),
                      ),
                      Text(
                        widget.username,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //2
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Your outing request has been approved for",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //3
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "the below mentioned date and time",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //4
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Out Date : ",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        widget.outDate,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //5
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Out Time : ",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        widget.outTime,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //6
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-----------------------------",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //7
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Purpose of Outing:",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //8
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.purcpose_of_outing,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //9
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "--------------------------------",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //10
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Return Date : ",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        widget.ReturnDate,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //11
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Return Time : ",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        widget.ReturnTime,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //12
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-----------------------------",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  //13
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Regards",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),

                  //14
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Hostel Administration",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }

  clicked_container() {
    return InkWell(
      onTap: () {
        setState(() {
          select = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromRGBO(83, 185, 199, 1),
                  child: Text(
                    "HK",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hostel KCT",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.username,
                          style: const TextStyle(
                              color: Color.fromRGBO(102, 102, 102, 1)),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          widget.rollnumber,
                          style: const TextStyle(
                              color: Color.fromRGBO(102, 102, 102, 1)),
                        )
                      ],
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Column(
                  children: [
                    Icon(
                      Icons.more_vert_outlined,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Text("To"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "You ",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  widget.email,
                  style:
                      const TextStyle(color: Color.fromRGBO(102, 102, 102, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("cc"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Hostel KCT",
                  style: TextStyle(color: Colors.blue),
                ),
                Column(
                  children: [
                    Text(
                      " hostel@kct.ac.in",
                      style: TextStyle(color: Color.fromRGBO(102, 102, 102, 1)),
                    ),
                  ],
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Security Officer KCT",
                  style: TextStyle(color: Colors.blue),
                ),
                Column(
                  children: [
                    Text(
                      " SecurityOfficer@kct.ac.in",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(102, 102, 102, 1)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  formatDateTime(
                      DateTime.now().subtract(const Duration(minutes: 10))),
                  style:
                      const TextStyle(color: Color.fromRGBO(102, 102, 102, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.2,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(102, 102, 102, 1),
                  radius: 12,
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    size: 15,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  notclicked() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            select = true;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromRGBO(83, 185, 199, 1),
                  child: Text(
                    "HK",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hostel KCT",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.username,
                            style: const TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1)),
                          ),
                        ),
                        Text(
                          widget.rollnumber,
                          style: const TextStyle(
                              color: Color.fromRGBO(102, 102, 102, 1)),
                        )
                      ],
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Column(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(color: Color.fromRGBO(102, 102, 102, 1)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      size: 20,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(102, 102, 102, 1),
                  radius: 12,
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    size: 15,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
//  ApprovePage(
//         commonDate: "Saturday,8 june ,2:56 pm",
//         username: 'Kabilan v',
//         outDate: '2024-06-08',
//         rollnumber: '22BAU020',
//         outTime: '5.00 pm',
//         ReturnDate: '2024-06-08',
//         ReturnTime: '5.00 pm',
//         purcpose_of_outing: "shopping",
//         email: 'kabilan.22aukct.ac.in',
//       ),