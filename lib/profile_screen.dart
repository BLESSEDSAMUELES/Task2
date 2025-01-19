import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String phone;
  final String dob;
  final String age;
  final String address;

  const ProfileScreen({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.dob,
    required this.age,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
        const Text(
        "These are the details you've provided while sign up process",
        style: TextStyle(fontSize: 16, color: Colors.black),
       ),
      const SizedBox(height: 16),
      Expanded(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 16),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[100],
                    child: const Icon(Icons.person, size: 40, color: Colors.lightBlueAccent,),
                  ),
                ),
                const SizedBox(height: 8),
                Center(child: Text('$firstName $lastName', style: const TextStyle(fontWeight: FontWeight.bold))),
                const SizedBox(height: 16),
                _buildProfileRow('Phone Number', phone),
                _buildProfileRow('Date of Birth', dob),
                _buildProfileRow('Age', age),
                _buildProfileRow('Address', address),
          ],
            ),
        ),
      ),
      ),
      ],
    ),
    ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5)),
            child: Text(value),
          ),
        ],
      ),
    );
  }
}