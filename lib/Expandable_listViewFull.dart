import 'package:flutter/material.dart';

class ExpandableListView extends StatelessWidget {
  int itemCount;
  int index_top;
  int index_separated;
  Widget your_widget_title;
  Widget your_widget_children;
  Widget your_widget_separated;

  ExpandableListView(
      {Key key,
      @required this.itemCount,
      this.index_top,
      this.index_separated,
      @required this.your_widget_title,
      @required this.your_widget_children,
      @required this.your_widget_separated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  itemCount: itemCount,
                  itemBuilder: (BuildContext context, int index) {
                    index_top = index;
                    return ExpansionTile(
                      title: your_widget_title,
                      children: <Widget>[
                        your_widget_children,
                      ],
                    );
                    ;
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    index_separated = index;
                    return your_widget_separated;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
