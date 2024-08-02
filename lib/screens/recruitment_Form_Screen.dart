import 'package:black/widgets/image_Selector.dart';
import 'package:black/widgets/myScaffold2.dart';
import 'package:flutter/material.dart';
import '../widgets/file_Picker.dart';
import '../widgets/gender_List.dart';
import '../widgets/relationship_status.dart';
import '../widgets/text_field_input.dart';

class RecruitmentFormScreen extends StatefulWidget {
  final String jobTitle;

  const RecruitmentFormScreen({Key? key, required this.jobTitle}) : super(key: key);

  @override
  _RecruitmentFormScreenState createState() => _RecruitmentFormScreenState();
}

class _RecruitmentFormScreenState extends State<RecruitmentFormScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    widget.jobTitle,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFieldInput(
                    hintText: 'Enter your Name',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  TextFieldInput(
                    hintText: 'Enter your Email',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  TextFieldInput(
                    hintText: 'Enter your mobile',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  TextFieldInput(
                    hintText: 'Enter your specialty',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  TextFieldInput(
                    hintText: 'Enter your Address',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  TextFieldInput(
                    hintText: 'Enter your type',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 15),
                  GenderSelection(), // Assuming GenderSelection is a custom widget
                  SizedBox(height: 15),
                  MaritalStatus(), // Assuming MaritalStatus is a custom widget
                  SizedBox(height: 15),
                  ImagePicker1(),
                  SizedBox(height: 15),
                  FilePickerWidget(),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      // Handle form submission
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Oxanium',
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
