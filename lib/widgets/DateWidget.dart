import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../providers/order_date_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/DateItem.dart';
import '../models/dates.dart';

class DateWidget extends StatefulWidget {

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {


  @override
  Widget build(BuildContext context) {

    return Provider <Dates> (
      create: (context) => Dates(),
          child: Consumer<Dates>(
            builder: (context, dates, child){
           return Row(
             children: [
           for (var i in dates.dateItems)
             DateItem(
              i.day,
              i.hour,
               i.id,
          ),
           ],
           );
           },
    ),
         );


  }
}
