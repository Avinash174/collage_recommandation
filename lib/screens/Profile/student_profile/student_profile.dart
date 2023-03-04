import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student First Name',
                  hintText: 'Enter Student First Name'),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Last Name',
                  hintText: 'Enter Student Last Name'),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Marks',
                  hintText: 'Enter Marks'),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Percentage',
                  hintText: 'Enter Percentage'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: Text('Register'))
        ],
      ),
    );
  }
}
