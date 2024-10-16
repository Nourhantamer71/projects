import 'package:flutter/material.dart';

import 'package:news_app/widgets/category_card.dart';

import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'News',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          TextSpan(
            text: 'Cloud',
            style: TextStyle(color: Colors.orange, fontSize: 24),
          ),
        ])),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryList(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          NewsListViewBuilder(
            category: 'general',
          )
        ],
      ),
    );
  }
}
