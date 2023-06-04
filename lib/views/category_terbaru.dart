import 'package:flutter/material.dart';
import '../apis/terbaru_data_source.dart';
import '../models/list_news_model.dart';

class CategoryTerbaru extends StatefulWidget {
  const CategoryTerbaru({Key? key}) : super(key: key);

  @override
  _CategoryTerbaruState createState() => _CategoryTerbaruState();
}

class _CategoryTerbaruState extends State<CategoryTerbaru> {
  List<Posts>? posts;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final result = await ApiDataSource.instance.loadTerbaru();
    final listNewsModel = ListNewsModel.fromJson(result);
    setState(() {
      posts = listNewsModel.data?.posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terbaru'),
      ),
      body: posts == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: posts!.length,
              itemBuilder: (context, index) {
                final post = posts![index];
                return ListTile(
                  title: Text(post.title ?? ''),
                  subtitle: Text(post.description ?? ''),
                  leading: post.thumbnail != null
                      ? Image.network(post.thumbnail!)
                      : null,
                  onTap: () {
                    // still empty
                  },
                );
              },
            ),
    );
  }
}
