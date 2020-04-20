import 'package:flutter/material.dart';
import 'package:flutterexpandablelistview/Expandable_listViewFull.dart';

class ExpandableListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expandable ListView Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: ExpandableListViewState());
  }
}

class ExpandableListViewState extends StatelessWidget {
  const ExpandableListViewState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableListView(
        itemCount: 3,
        index_top: 1,
        index_separated: 1,
        your_widget_title: Container(
            height: 76,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("title ExpandableListView",
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Color(0xff4a4a4a),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    )),
              ],
            )),
        your_widget_children: Container(
            height: 76,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("children ExpandableListView",
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Color(0xff4a4a4a),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    )),
              ],
            )),
        your_widget_separated: Container(
            height: 2,
            decoration: new BoxDecoration(color: Color(0xffdcdcdc))));
  }
}
