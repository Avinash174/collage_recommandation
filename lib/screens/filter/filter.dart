import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Marks:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(

                children: const <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Marks',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10), // Add some space between the two text fields
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Percentage',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cast:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
             Container(
               child:  CheckboxListTile(
                 value: value,
                 onChanged: (value) => setState(
                       () {
                     this.value = value!;
                   },
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
