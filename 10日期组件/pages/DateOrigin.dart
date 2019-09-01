import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateOriginPage extends StatefulWidget {
  DateOriginPage({Key key}) : super(key: key);

  _DateOriginPageState createState() => _DateOriginPageState();
}

class _DateOriginPageState extends State<DateOriginPage> {
  var _now = DateTime.now();
  var _time = TimeOfDay(hour:9,minute: 20);

  _showDatePicker() async{
    var time = await showDatePicker(
      context: context,
      initialDate: _now,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      locale: Locale('zh')
    );
    if(time==null) return;
    print(time);
    setState(() {
     _now = time ;
    });
  }

  _showTimePicker() async{
    var time = await showTimePicker(
      context: context,
      initialTime: _time
    );
    if(time == null) return;
    print(time);
    setState(() {
     _time = time; 
    });
  }

  void initState() { 
    super.initState();
    // print(DateTime.now());
    // print(DateTime.now().millisecondsSinceEpoch);
    // print(DateTime.fromMicrosecondsSinceEpoch(DateTime.now().millisecondsSinceEpoch));
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Date Origin')
      ),
      body: Column(
        children: <Widget>[
          InkWell(
            child: Text('${this._now}'),
            onTap: _showDatePicker,
          ),
          InkWell(
            child: Text('${this._time}'),
            onTap: _showTimePicker,
          )
        ],
      ),
    );
  }
}