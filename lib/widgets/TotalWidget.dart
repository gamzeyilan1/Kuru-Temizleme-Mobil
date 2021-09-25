import 'package:flutter/material.dart';
import '../widgets/ServiceItem.dart';


class TotalWidget extends StatefulWidget {

  TotalWidget();
  @override
  _TotalWidgetState createState() => _TotalWidgetState();
}

class _TotalWidgetState extends State<TotalWidget> {
  @override
  void initState() {
    super.initState();
    ValueNotifier <double> total = ValueNotifier(0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 70,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "TOPLAM",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: 230,
              ),
              Container(

                padding: EdgeInsets.only(
                  right: 20,
                ),
                child:
                ValueListenableBuilder(
                  valueListenable: total,
                  builder: (context, total, child){
                  return Text(
                  "$total",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ); },

                ),

              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Tüm indirimler dahil minimum sepet tutarı 49 lira olmalıdır.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
