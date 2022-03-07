import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Inputs Screen')),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CustomInputFormFieldWidget(
                    hintText: 'First Name', labelText: 'First Name'),
                CustomInputFormFieldWidget(
                    hintText: 'Last Name', labelText: 'Last Name'),
                CustomInputFormFieldWidget(
                  hintText: 'Phone',
                  labelText: 'Phone',
                  maxLength: 12,
                  keyboardType: TextInputType.phone,
                ),
                CustomInputFormFieldWidget(
                  hintText: 'Email',
                  labelText: 'Email',
                  maxLength: 200,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomInputFormFieldWidget(
                  hintText: 'Password',
                  labelText: 'Password',
                  obscureText: true,
                  maxLength: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Save'))),
                )
              ],
            ),
          ),
        ));
  }
}
