import 'package:app_theme/widgets/ServiceItem.dart';
import 'package:flutter/material.dart';
import '../widgets/ServicesListWidget.dart';
import '../widgets/ServiceItem.dart';
import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'package:provider/provider.dart';
import '../providers/services_provider.dart';


bool isVisible = false;



class SearchServicesWidget extends StatefulWidget {

  @override
  _SearchServicesWidgetState createState() => _SearchServicesWidgetState();
}

class _SearchServicesWidgetState extends State<SearchServicesWidget> {
  TextEditingController editingController = TextEditingController();
  String _searchText ="";

  @override
  Widget build(BuildContext context) {
    return
      Visibility(

        visible: isVisible,
        child: SizedBox(
          height: 70,

          child: Container(
            child: Column(
            children: <Widget> [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width*80,
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    Provider.of<Services>( context, listen: false).changeSearchString(value);
                  },
                  controller: editingController,

                  decoration: InputDecoration(
                    hintText: "Hizmet Ara",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),

              ),
            ],
    ),
          ),
        ),
      );
  }
}
