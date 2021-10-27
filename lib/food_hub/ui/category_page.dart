import 'package:flutter/material.dart';

class CateoryPage extends StatefulWidget {
  const CateoryPage({Key? key}) : super(key: key);

  @override
  _CateoryPageState createState() => _CateoryPageState();
}

class _CateoryPageState extends State<CateoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, scroled) => [
                SliverAppBar(
                  expandedHeight: 200,
                  collapsedHeight: 150,
                  pinned: true,
                  flexibleSpace: Stack(
                    children: [
                      Container(
                          width: double.infinity,
                          height: 236,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/categorybg.png"),
                                fit: BoxFit.cover),
                          )),
                      Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            // controller: widget.controller,
                            decoration: InputDecoration(
                                hintText: 'Search...',
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        width: 5, color: Colors.red))),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
          body: Row(
            children: [
              Column(
                children: [
                  Text('INGREDIENTS'),
                  SizedBox(height: 35),
                  Text('INGREDIENTS'),
                  SizedBox(height: 35),
                  Text('INGREDIENTS'),
                  SizedBox(height: 35),
                  Text('INGREDIENTS'),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text('INGREDIENTS'),
                    Text('INGREDIENTS'),
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ]),
    );
  }
}