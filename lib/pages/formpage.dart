import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide.none,
  );
  final focusedBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.cyan.shade900, width: 2));
  String? outingDate;
  String? returnDate;
  String? purposeOfOuting;
  final now = DateTime.now();
  final Map<String, String> outpassData = {
    "name": "",
    "rollno": "",
    "outdate": "",
    "outtime": "",
    "returndate": "",
    "returntime": "",
    "pot": "",
    "email": "",
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.cyan.shade900,
          title: const Text(
            "Hostel Outing Request",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            cacheExtent: 9999,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
            children: [
              /////////////////////Name/////////////////////////////////
              const Text(
                "0. College email",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  value = value ?? "";
                  if (value.isEmpty) return "Please enter a value";
                  outpassData["email"] = value;
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    border: border,
                    focusedBorder: focusedBorder,
                    enabledBorder: border,
                    hintText: "Enter your answer"),
              ),
              const SizedBox(height: 45),

              /////////////////////Name/////////////////////////////////
              const Text(
                "1. Name",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  value = value ?? "";
                  if (value.isEmpty) return "Please enter a value";
                  outpassData["name"] = value;

                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    border: border,
                    focusedBorder: focusedBorder,
                    enabledBorder: border,
                    hintText: "Enter your answer"),
              ),
              const SizedBox(height: 45),

              /////////////////////rollnumber/////////////////////////////////
              const Text(
                "2. Roll Number",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  value = value ?? "";
                  if (value.isEmpty) return "Please enter a value";
                  outpassData["rollno"] = value;

                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    border: border,
                    focusedBorder: focusedBorder,
                    enabledBorder: border,
                    hintText: "Enter your answer"),
              ),
              const SizedBox(height: 45),

              /////////////////////outing date/////////////////////////////////
              const Text(
                "3. Outing date",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(outingDate ?? "Please choose a date"),
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                onTap: () async {
                  final pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(now.year),
                      lastDate: DateTime(now.year + 1));
                  if (pickedDate != null) {
                    outingDate = pickedDate.toString().substring(0, 10);
                    outpassData["outdate"] = outingDate!;

                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 45),

              /////////////////////outing time/////////////////////////////////
              const Text(
                "4. Outing time",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  value = value ?? "";
                  if (value.isEmpty) return "Please enter a value";
                  outpassData["outtime"] = value;

                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    border: border,
                    focusedBorder: focusedBorder,
                    enabledBorder: border,
                    hintText: "Enter your answer"),
              ),
              const SizedBox(height: 45),

              /////////////////////return date/////////////////////////////////
              const Text(
                "5. Return date",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(returnDate ?? "Please choose a date"),
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                onTap: () async {
                  final pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(now.year),
                      lastDate: DateTime(now.year + 1));
                  if (pickedDate != null) {
                    returnDate = pickedDate.toString().substring(0, 10);
                    outpassData["returndate"] = returnDate!;

                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 45),

              /////////////////////return time/////////////////////////////////
              const Text(
                "6. Return time",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  value = value ?? "";
                  if (value.isEmpty) return "Please enter a value";
                  outpassData["returntime"] = value;

                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    border: border,
                    focusedBorder: focusedBorder,
                    enabledBorder: border,
                    hintText: "Enter your answer"),
              ),
              const SizedBox(height: 45),

              /////////////////////purpose of outing//////////////////
              const Text(
                "7. Purpose of Outing",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              DropdownMenu(
                label: const Text("Select your answer"),
                width: 300,
                onSelected: (value) {
                  if (value == null) return;
                  purposeOfOuting = value;
                  outpassData["pot"] = value;

                  setState(() {});
                },
                dropdownMenuEntries: const <DropdownMenuEntry<String>>[
                  DropdownMenuEntry(
                    value: "Shopping/Gym/Haircut/Xerox/Temple",
                    label: "Shopping/Gym/Haircut/Xerox/Temple",
                  ),
                  DropdownMenuEntry(
                    value: "Lunch",
                    label: "Lunch",
                  ),
                  DropdownMenuEntry(
                    value: "Dinner",
                    label: "Dinner",
                  ),
                  DropdownMenuEntry(
                    value: "Home - Native",
                    label: "Home - Native",
                  ),
                  DropdownMenuEntry(
                    value: "Movie - Note: Night Shows Not Allowed",
                    label: "Movie - Note: Night Shows Not Allowed",
                  ),
                  DropdownMenuEntry(
                    value: "Medical Purpose",
                    label: "Medical Purpose",
                  ),
                  DropdownMenuEntry(
                    value: "Relative House - (Functions)",
                    label: "Relative House - (Functions)",
                  ),
                  DropdownMenuEntry(
                    value: "Official - Voluntary Work",
                    label: "Official - Voluntary Work",
                  ),
                  DropdownMenuEntry(
                    value: "Official - Industrial Visit",
                    label: "Official - Industrial Visit",
                  ),
                  DropdownMenuEntry(
                    value: "Official - Sports",
                    label: "Official - Sports",
                  ),
                  DropdownMenuEntry(
                    value: "Official - Participating Other College Events",
                    label: "Official - Participating Other College Events",
                  ),
                  DropdownMenuEntry(
                    value: "Internship",
                    label: "Internship",
                  ),
                ],
              ),
              const SizedBox(height: 45),

              ///////////////submit button//////////////
              MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (returnDate == null ||
                        outingDate == null ||
                        purposeOfOuting == null) return;
                    Navigator.pop(context, outpassData);
                  }
                },
                color: Colors.cyan.shade900,
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
