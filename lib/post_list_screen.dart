import 'package:flutter/material.dart';
import 'post_model.dart';
import 'api_service.dart';

class PostListScreen extends StatefulWidget {
  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = ApiService().fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    // Note: The image cuts off here, but typically you would use a FutureBuilder
    // to display the futurePosts data in a ListView.
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: const Center(child: Text("FutureBuilder logic goes here")),
    );
  }
}