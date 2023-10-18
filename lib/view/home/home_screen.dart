import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeContainer = MediaQuery.sizeOf(context).height / 3;

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
        padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
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
              child: MasonryGridView.builder(
                itemCount: 5,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: (index == 0)
                        ? Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height / 8,
                                child: Text(
                                  "Found \n10 Result",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.fontSize,
                                  ),
                                ),
                              ),
                              ProductWidget(sizeContainer: sizeContainer),
                            ],
                          )
                        : ProductWidget(sizeContainer: sizeContainer),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.sizeContainer,
  });

  final double sizeContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColor.whiteV1Color,
        borderRadius: BorderRadius.circular(16),
      ),
      height: sizeContainer,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/cambodia.webp',
                fit: BoxFit.cover,
              ),
            ),
            Text("data"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("RP. 5000"),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 16,
                      Icons.favorite,
                      color: CustomColor.whiteV1Color,
                    ),
                  ),
                ),
              ],
            ),
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
          // margin: EdgeInsets.only(bottom: 10),
          color: backgroundColor ?? Colors.amber,
          // height: extent,
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
