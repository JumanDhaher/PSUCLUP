import 'package:flutter/material.dart';
import 'package:psu_club/screens/bottomtab_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screens';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.8);
      
  final textFieldController = TextEditingController(text: 'Search');

  Widget textFiledSearch() {
    return TextField(
      controller: textFieldController,
      decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.black),
          hintText: 'Search'),
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

  Widget _buildContinear(Widget childButton) {
    return Container(
      padding: EdgeInsets.all(20),
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        child: childButton,
      ),
    );
  }

  Widget buildGridView() {
    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
      ),
      children: <Widget>[
        _buildContinear(FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(BottomTabsScreen.routeName);
            },
            child: Text('Clubs'))),
        _buildContinear(FlatButton(
            onPressed: () {
              //Navigator.of(context).pushNamed();
            },
            child: Text('Events'))),
        _buildContinear(FlatButton(
            onPressed: () {
              //Navigator.of(context).pushNamed();
            },
            child: Text('Certificats'))),
        _buildContinear(FlatButton(
            onPressed: () {
              //Navigator.of(context).pushNamed();
            },
            child: Text('Profile'))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFiledSearch(),
            Divider(
              thickness: 2,
            ),
            Text(
              'What is new?',
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx, i) => SafeArea(
                      child: Card(
                        color: Colors.blue,
                      )),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: buildGridView(),
            )
          ],
        ),
      ),
    );
  }
}
