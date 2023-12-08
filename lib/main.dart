import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view.dart';

class MyStaggeredGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid View'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2, // Number of columns
        itemCount: 10,      // Number of items
        itemBuilder: (BuildContext context, int index) {
          return YourGridTileWidget(index); // Replace with your custom grid tile widget
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(1, index.isEven ? 1.5 : 1); // Adjust the tile height as per your requirement
        },
        mainAxisSpacing: 4.0, // Spacing between columns
        crossAxisSpacing: 4.0, // Spacing between rows
      ),
    );
  }
}
