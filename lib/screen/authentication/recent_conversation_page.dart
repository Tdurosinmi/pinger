import 'package:flutter/material.dart';

class RecentConversationsPage extends StatelessWidget {
  final double _height;
  final double _width;

  RecentConversationsPage(this._height, this._width);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      child: _conversationsListViewWidget(),
    );
  }

  Widget _conversationsListViewWidget() {
    return Container(
      height: _height,
      width: _width,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (_context, _index) {},
      ),
    );
  }
}
