import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewPage extends StatefulWidget{
  const GridViewPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GridView();
  }
}

class _GridView extends State<GridViewPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: SizedBox(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/alerte-rouge.jpeg'
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.black45,
                  child: const Text(
                    'Mon chien aime regarder Netflix',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),


          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 0.4,
            child: SizedBox(),
          ),


          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: SizedBox(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/alerte-rouge.jpeg'
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.black45,
                  child: const Text(
                    'Mon chien aime regarder Netflix',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),

          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 0.4,
            child: SizedBox(),
          ),


          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: SizedBox(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/alerte-rouge.jpeg'
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.black45,
                  child: const Text(
                    'Mon chien aime regarder Netflix',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),

          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 0.4,
            child: SizedBox(),
          ),


          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: SizedBox(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/alerte-rouge.jpeg'
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.black45,
                  child: const Text(
                    'Mon chien aime regarder Netflix',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}