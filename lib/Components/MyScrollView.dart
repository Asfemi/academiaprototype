import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({
    @required this.height,
    @required this.backgroundWidget,
    @required this.actionsList,
    @required this.leadingWidget,
    @required this.title,
    @required this.child,
    @required this.bottom,
  });

  final double height;

  final Widget backgroundWidget;
  final Widget leadingWidget;
  final List actionsList;
  final String title;
  final SliverChildBuilderDelegate child;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("$title",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              background: backgroundWidget,
            ),
            expandedHeight: height,
            backgroundColor: kPrimaryColor,
            leading: leadingWidget,
            bottom: bottom,
            actions: actionsList,
          ),
          SliverList(
            delegate: child,
          )
        ],
      ),
    );
  }
}
