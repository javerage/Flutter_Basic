import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  void onPostForm(
      GlobalKey<FormState> formState, Map<String, String> formValues) {
    bool isValid = formState.currentState!.validate();

    if (!isValid) return;

    // agregar codigo
    FocusScope.of(formState.currentState!.context).requestFocus(FocusNode());
    print(formValues);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> initialObject = {
      'firstName': '',
      'lastName': '',
      'phone': '',
      'email': '',
      'password': '',
      'language': ''
    };

    final List<String> languages = [
      'CSharp',
      'Java',
      'Python',
      'Kotlin',
      'Go',
      'Javascript',
      'Haskell',
      'Other',
    ];

    return Scaffold(
        appBar: AppBar(title: Text('Inputs Screen')),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputFormFieldWidget(
                      hintText: 'First Name',
                      labelText: 'First Name',
                      propertyName: 'firstName',
                      formValues: initialObject,
                      autofocus: true),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputFormFieldWidget(
                      hintText: 'Last Name',
                      labelText: 'Last Name',
                      propertyName: 'lastName',
                      formValues: initialObject),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputFormFieldWidget(
                      hintText: 'Phone',
                      labelText: 'Phone',
                      maxLength: 12,
                      keyboardType: TextInputType.phone,
                      propertyName: 'phone',
                      formValues: initialObject),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputFormFieldWidget(
                      hintText: 'Email',
                      labelText: 'Email',
                      maxLength: 200,
                      keyboardType: TextInputType.emailAddress,
                      propertyName: 'email',
                      formValues: initialObject),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputFormFieldWidget(
                      hintText: 'Password',
                      labelText: 'Password',
                      obscureText: true,
                      maxLength: 8,
                      propertyName: 'password',
                      formValues: initialObject),
                  SizedBox(
                    height: 10,
                  ),
                  CustomDropDownWidget(
                      languages: languages,
                      initialObject: initialObject,
                      propertyName: 'language',
                      labelText: 'Language',
                      hintText: 'Select One...',
                      formValues: initialObject),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => onPostForm(myFormKey, initialObject),
                    child: SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Save'))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
