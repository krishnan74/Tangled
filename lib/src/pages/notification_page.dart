import 'package:flutter/material.dart';

class Notification_page extends StatelessWidget {
  const Notification_page({super.key});

  static const List<String> _tabs = <String>['Consultations', 'Remainders'];
  static const List<String> _consultations = <String>[
    'Rakesh',
    'Kumar',
    'Priya',
  ];
  static const List<String> _remainders = <String>[
    'Rakesh',
    'Kumar',
    'Priya',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        // Listens to the scroll events and returns the current position.
        body: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollNotification) {
            if (scrollNotification is ScrollStartNotification) {
              debugPrint('Scrolling has started');
            } else if (scrollNotification is ScrollEndNotification) {
              debugPrint('Scrolling has ended');
            }
            // Return true to cancel the notification bubbling.
            return true;
          },
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: const Text('Notification'),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                ListView.builder(
                  itemCount: _consultations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(_consultations[index]));
                  },
                ),
                ListView.builder(
                  itemCount: _remainders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(_remainders[index]));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
