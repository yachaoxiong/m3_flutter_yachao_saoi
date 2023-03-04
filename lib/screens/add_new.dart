import 'package:clinic_flutter_p1/screens/home_screen.dart';
import 'package:clinic_flutter_p1/widget/app_input.dart';
import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _departmentController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  bool _showCard = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              Text(
                'Patient',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ]),
            //subtitle
            SizedBox(height: 30),
            _showCard ? _buildCard() : _buildForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //subtitle
            Text("1/2 Patient Details",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            AppInput(
              controller: _firstNameController,
              hintText: 'First Name',
            ),
            AppInput(
              controller: _lastNameController,
              hintText: 'Last Name',
            ),
            AppInput(
              controller: _ageController,
              hintText: 'Age',
            ),
            AppInput(
              controller: _genderController,
              hintText: 'Gender',
            ),
            AppInput(
              controller: _dobController,
              hintText: 'Date of Birth',
            ),
            AppInput(
              controller: _departmentController,
              hintText: 'Department',
            ),

            AppInput(
              controller: _emailController,
              hintText: 'Email',
            ),
            AppInput(
              controller: _phoneController,
              hintText: 'Phone',
            ),
            AppInput(
              controller: _addressController,
              hintText: 'Address',
            ),
            AppInput(
              controller: _heightController,
              hintText: 'Height',
            ),
            AppInput(
              controller: _weightController,
              hintText: 'Weight',
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showCard = true;
                });
              },
              child: Text('next'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //subtitle
              SizedBox(height: 30),
              Text(
                '2/2 Confirmation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('First Name: ${_firstNameController.text}'),
              Text('Last Name: ${_lastNameController.text}'),
              Text('Age: ${_ageController.text}'),
              Text('dob: ${_dobController.text}'),
              Text('Department: ${_departmentController.text}'),
              Text('Gender: ${_genderController.text}'),
              Text('Email: ${_emailController.text}'),
              Text('Phone number: ${_phoneController.text}'),
              Text('Address: ${_addressController.text}'),
              Text('Height: ${_heightController.text}'),
              Text('Weight: ${_weightController.text}'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
