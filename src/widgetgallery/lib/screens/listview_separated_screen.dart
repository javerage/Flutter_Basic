import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetgallery/providers/providers.dart';
import 'package:widgetgallery/resources/app_resources.dart';
import 'package:widgetgallery/themes/app_theme.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  const ListViewSeparatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final studentsProvider = Provider.of<UserProvider>(context);
    final students = studentsProvider.resultStudents;

    return Scaffold(
      body: ListView.separated(
        itemCount: students.length,
        separatorBuilder: (BuildContext context, int index) => ListTile(
            title: Text(
              students[index].fullName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                  children: [
                  WidgetSpan(child: Icon(Icons.phone)),
                  TextSpan(text: students[index].phone)
                ])),
                Text.rich(TextSpan(children: [
                  WidgetSpan(child: Icon(Icons.email)),
                  TextSpan(text: students[index].email)
                ])),
                Text.rich(TextSpan(children: [
                  WidgetSpan(child: Icon(Icons.code)),
                  TextSpan(text: students[index].language)
                ])),
              ],
            ),
            leading: SizedBox(
              width: 55,
              height: 55,
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(100),
                child: FadeInImage.assetNetwork(
                  image: students[index].profile,
                  placeholder: AppResources.loadingImage,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            )),
        itemBuilder: (BuildContext context, int index) =>
            Divider(color: AppTheme.primaryColor),
      ),
    );
  }
}
