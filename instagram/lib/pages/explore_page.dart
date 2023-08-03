import 'package:flutter/material.dart';
// import 'package:instagram/exploer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Posts> posts;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: ListView(
        physics: const ScrollPhysics(),
        padding:
            EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 0),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              height: 50,
              child: TextField(
                // onChanged: (value) {
                //   setState(() {
                //     _searchText = value;
                //   });
                // },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  return ClipRRect(
                    // borderRadius: BorderRadius.circular(3),
                    child: Image.network(
                      'https://source.unsplash.com/random?sig=$index',
                      fit: BoxFit.cover,
                    ),
                  );
                }, childCount: 44),
                physics: const NeverScrollableScrollPhysics()),
                
          ),
        ],
      ),
    );
  }
}
