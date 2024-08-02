import 'package:flutter/material.dart';

class MaritalStatus extends StatefulWidget {
  @override
  _MaritalStatusState createState() => _MaritalStatusState();
}

class _MaritalStatusState extends State<MaritalStatus> {
  String selectedMaritalStatus = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Marital Status:',
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
            items: ['Single', 'Widower','Married','absolute']
                .map((String MaritalStatus) => DropdownMenuItem<String>(
              value: MaritalStatus,
              child: Text(MaritalStatus),
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