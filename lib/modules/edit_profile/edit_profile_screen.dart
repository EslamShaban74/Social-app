import 'package:flutter/material.dart';
import 'package:social_app/shared/components/components.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        actions: [
          defaultTextButton(function: () {}, text: 'UPDATE'),
          SizedBox(width: 5.0),
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
