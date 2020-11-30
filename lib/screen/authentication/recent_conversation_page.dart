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
        itemCount: 10,
        itemBuilder: (_context, _index) {
          return ListTile(
            onTap: () {},
            title: Text("Tolu"),
            subtitle: Text("Subtitle"),
            tileColor:
                Colors.white, //TODO: maybe change that color some where else
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage("https://i.pravatar.cc/150?img=3"),
                ),
              ),
            ),
            // trailing: ,
          );
        },
      ),
    );
  }

  Widget _listTileTrailingWidgets() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          "Lastseen",
          style: TextStyle(fontSize: 15),
        ),
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
        )
      ],
    );
  }
}
