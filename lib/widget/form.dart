import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:kp/widget/post.dart';

TextEditingController _messageController = TextEditingController();
ScrollController _scrollController = ScrollController();

class PostList extends StatefulWidget {
  PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(children: [
        SizedBox(
          height: 200,
        ),
        _getMessageList()
      ]),
    );
  }
}

Widget _getMessageList() {
  return Expanded(
    child: FirebaseAnimatedList(
      controller: _scrollController,
      query: FirebaseDatabase.instance.ref("user/"),
      itemBuilder: (context, snapshot, animation, index) {
        final json = snapshot.value as Map<dynamic, dynamic>;
        final message = PostData.fromJson(json);

        return PostWidget(message.author, message.date);
      },
    ),
  );
}

class PostData {
  PostData({
    // this.key

    this.author,
    required this.date,
    this.mean,
    this.starCount,
    this.uid,
    this.word,
  });

// String? key;
  String? author;
  String? date;
  String? mean;
  int? starCount;
  String? uid;
  String? word;

  PostData.fromJson(Map<dynamic, dynamic> json) {
    author = json['author'];
    date = json['date'];
    mean = json['mean'];
    starCount = json['starCount'];
    uid = json['uid'];
    word = json['word'];
  }
}
