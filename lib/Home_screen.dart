import 'package:flutter/material.dart';
import 'package:module12_assignment_final/responsive_builder.dart';

class HomeScreen extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _buildMobileUi(),
        tablet: _buildTabletUi(),
        desktop: _buildDesktopUi());
  }

  Widget _buildTabletUi() {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 100, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 70.0),
                  child: Column(
                    children: [Text('HUMMING'), Text("BIRD")],
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 130,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Episodes',
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text("About",
                          style: TextStyle(color: Colors.black)))
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      "FLUTTER WEB.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const Text(
                      "THE BASICS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        width: 370,
                        height: 80,
                        child: const Text(
                            "In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying Font Changes, Hover functionality, Modals and more.")),
                    const SizedBox(height: 50),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Join Course"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildMobileUi() {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("HUMMING"),
                  Text("BIRD."),
                ],
              ),
            )
          ],
        ),
        toolbarHeight: 70,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // child: UserAccountsDrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.green,
              //   ),
              //   accountName: Text("Naeem"),
              //   accountEmail: null,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SKILL UP NOW",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "TAP HERE",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text("Episodes"),
              leading: Icon(Icons.movie),
            ),
            const ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(height: 56),
                    const Text(
                      "FLUTTER WEB.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const Text(
                      "THE BASICS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        "In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying Font Changes, Hover functionality, Modals and more."),
                    const SizedBox(height: 50),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Join Course"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopUi() {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(60.0, 0.0, 100, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('HUMMING'), Text("BIRD")],
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 130,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Episodes',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text("About",
                        style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "FLUTTER WEB.",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                const Text(
                  "THE BASICS",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  height: 130,
                  width: 600,
                  child: const Text(
                      "In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying Font Changes, Hover functionality, Modals and more.",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              ],
            ),
            const SizedBox(height: 26.0),
            // ElevatedButton(onPressed: (){},  child: Text("Join Course"),style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Join Course",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      foregroundColor: Colors.white,minimumSize: Size(240, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5.0)))),
                ),
            const Flexible(child: SizedBox(width: 20)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
