import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../item.dart';
import '../itemlist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


List<Item> unsortedItems = getItems();
List<Item> sortItems(List<Item> items) {
  items.sort((a, b) => a.type.compareTo(b.type));
  return items;
}


class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ItemScrollController _scrollController = ItemScrollController();

  List<Item> items = sortItems(unsortedItems);
  List<Item> checkoutItems = [];

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: _openEndDrawer,
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Checkout"),
            ),
            for (var item in checkoutItems) ListTile(
              title: Text(item.name),
              subtitle: Text("\$" + item.price.toString()),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    checkoutItems.remove(item);
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Subtotal"),
              subtitle: Text("\$" + checkoutItems.fold(0.0, (sum, item) => sum + item.price).toStringAsFixed(2)),
            ),
            ListTile(
              title: Text("Total"),
              subtitle: Text("\$" + checkoutItems.fold(0.0, (sum, item) => ((sum + item.price) * 1.0625)).toStringAsFixed(2)),
            ),
          ],
        ),
      ),

      body: Row(
        children: [
          NavigationRail(
            leading: IconButton(
              icon: Icon(Icons.logout, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
                List<int> scrollerIndices = [0,2,5,6];
                _scrollController.scrollTo(index: scrollerIndices[index], curve: Curves.easeIn,duration: Duration(milliseconds: 400));
              });
            },
            labelType: NavigationRailLabelType.selected,
            groupAlignment: 0,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.checkroom_outlined),
                selectedIcon: Icon(Icons.checkroom),
                label: Text('Clothes'),

              ),
              NavigationRailDestination(
                icon: Icon(Icons.book_outlined),
                selectedIcon: Icon(Icons.book),
                label: Text('Books'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chair_outlined),
                selectedIcon: Icon(Icons.chair),
                label: Text('Furniture'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.propane_outlined),
                selectedIcon: Icon(Icons.propane),
                label: Text('Misc.'),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: ScrollablePositionedList.builder(
                itemScrollController: _scrollController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children:[
                      TextButton(onPressed: () {setState(() { checkoutItems.add(items[index]);});}, child:ItemCard(items[index])),
                      TextButton(onPressed: () {setState(() { checkoutItems.add(items[index]);});}, child:ItemCard(items[index])),
                      TextButton(onPressed: () {setState(() { checkoutItems.add(items[index]);});}, child:ItemCard(items[index])),
                    ]
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}