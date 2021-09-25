import 'package:flutter/material.dart';

class DateItem extends StatefulWidget {
  final String day;
  final String hour;
  final int id;


  DateItem(this.day, this.hour, this.id);


  @override
  _DateItemState createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {
  int selectedId = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
        this.selectedId = widget.id;
        isSelected = !isSelected;
       }
      );


      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          color:(isSelected) ? Colors.green: Colors.grey.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.day, style: TextStyle(
              color: (isSelected) ? Colors.white : Colors.black,
              fontSize: 15,
            ), ),
            Text(widget.hour, style: TextStyle(
              color: (isSelected) ? Colors.white : Colors.black,
              fontSize: 15,
            ), ),
          ],
        ),
      ),
    );
  }
}
