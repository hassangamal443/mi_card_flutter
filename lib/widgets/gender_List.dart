import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please select your gender:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Set border radius here
                borderSide: BorderSide(color: Colors.black), // Set border color here
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            items: ['Male', 'Female']
                .map((String gender) => DropdownMenuItem<String>(
              value: gender,
              child: Text(gender),
            ))
                .toList(),
            onChanged: (String? value) {
              // Handle gender selection
              if (value != null) {
                print('Selected $value');
                // You can add further logic here based on the selection
              }
            },
            // Set an initial value if needed
            value: null,
          ),
        ],
      ),
    );
  }
}