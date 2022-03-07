import 'package:flutter/material.dart';
import 'friend.dart';

class FriendDetail extends StatefulWidget {
  final Friend friend;

  const FriendDetail({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  _FriendDetailState createState() {
    return _FriendDetailState();
  }
}

class _FriendDetailState extends State<FriendDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.friend.name),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.friend.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.friend.description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
