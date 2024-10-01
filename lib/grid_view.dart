import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: true,
            backgroundColor: Colors.grey,
            titleTextStyle: TextStyle(fontSize: 35, color: Colors.black),
            title: Text(
              " CHOOSE YOUR SEATS",
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 26.0, top: 12.00),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.brightness_4,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  color: Colors.black,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 17, top: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'SEARCH...',
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 190, top: 10, right: 0.00),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.cancel,
                                color: Colors.white,
                                size: 33,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 70,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(fontSize: 26),
                                        ),
                                        Text(
                                          'Lower',
                                          style: TextStyle(fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    itemCount: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
