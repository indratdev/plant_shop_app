import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.greyV2Color,
      appBar: AppBar(
        backgroundColor: CustomColor.greyV2Color,
        centerTitle: true,
        title: const Text("Search Products"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              height: MediaQuery.sizeOf(context).height / 13,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColor.whiteV2Color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Plant",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      color: CustomColor.whiteV2Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune),
                    ),
                  ),
                  // ElevatedButton(
                  //     onPressed: () {}, icon: Icon(Icons.tune), label: Text(""))
                ],
              ),
            ),
            // MasonryGridView
            Expanded(
              child: MasonryGridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Tile(
                    index: index,
                    extent: (index % 2 == 0) ? 300 : 200,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      margin: EdgeInsets.only(bottom: 50),
      color: backgroundColor ?? Colors.amber,
      height: extent,
      // height: 350,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    final childTitle = Column(
      children: [
        Container(
          child: Text("Dataaaaa"),
          height: 200,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: backgroundColor ?? Colors.amber,
          // height: extent,
          height: 350,
          child: Center(
            child: CircleAvatar(
              minRadius: 20,
              maxRadius: 20,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              child: Text('$index', style: const TextStyle(fontSize: 20)),
            ),
          ),
        ),
      ],
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        // Expanded(child: (index == 0) ? childTitle : child),
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
