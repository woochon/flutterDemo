import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
class DatePubPage extends StatefulWidget {
  DatePubPage({Key key}) : super(key: key);

  _DatePubPageState createState() => _DatePubPageState();
}

class _DatePubPageState extends State<DatePubPage> {
  String _format = 'yyyy年M月d日    EEE,H时:m分';
   DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;
   DateTime _dateTime;
  void _showDateTimePicker() {
      DatePicker.showDatePicker(
        context,
        minDateTime: DateTime.parse('1900-05-15 09:23:10'),
        maxDateTime: DateTime.parse('2100-12-03 21:11:00'),
        initialDateTime: DateTime.parse('2019-05-16 09:00:00'),
        dateFormat: _format,
        locale: _locale,
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
        ),
        pickerMode: DateTimePickerMode.datetime, // show TimePicker
        onCancel: () {
          debugPrint('onCancel');
        },
        onChange: (dateTime, List<int> index) {
          setState(() {
            _dateTime = dateTime;
          });
        },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _dateTime = dateTime;
          });
        },
      );
    }
  @override
  void initState() { 
    super.initState();
    this._dateTime = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期第三方插件'),
      ),
      body:Column(
        children: <Widget>[
          InkWell(
            child: Row(
              children: <Widget>[
                Text('${this._dateTime}'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: _showDateTimePicker
          ),
          InkWell(
            child: Row(
              children: <Widget>[
                Text('${this._dateTime}'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: _showDateTimePicker
          )
        ],
      )
    );
  }
}